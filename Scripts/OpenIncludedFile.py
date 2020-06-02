import sublime
import sublime_plugin

import os
import re


class OpenIncludedHlslFileCommand(sublime_plugin.TextCommand):
	def __init__(self, view):
		self.view = view
		self.pos = -1

	def path_replace(self, match_object):
		# Given the pattern of (\$base_path)(\[)(\d+)(\]), \d+ is group 3
		index = int(match_object.group(3))
		if index < len(self.settingsBasePaths):
			return self.settingsBasePaths[index]
		return "ERRORSTRING"

	def run(self, edit, event):
		view = self.view

		if self.pos != -1:
			scopeRegion = view.extract_scope(self.pos)
			originalFilePath = view.substr(scopeRegion).replace("/", "\\")

			# Search order is from absolute path of launching file, list order of user paths, finally Unity project paths.
			basePath = ""
			curFile = view.file_name()
			if curFile != None:
				basePath = view.file_name().rsplit('\\', 1)[0] + '\\'
			paths = [ basePath ]

			self.settingsBasePaths = sublime.load_settings("HLSL Syntax.sublime-settings").get("OpenHeaderBasePaths", [])
			settingsIncludePaths = sublime.load_settings("HLSL Syntax.sublime-settings").get("OpenHeaderIncludePaths", [])
			settingsPaths = []
			for index in range(0, len(settingsIncludePaths)):
				newSettingsPath = re.sub("(\$base_path)(\[)(\d+)(\])", self.path_replace, settingsIncludePaths[index])
				paths.append(newSettingsPath)

			# Try to find paths expected relative to a Unity project's root folder.
			assetDir, embeddedPackagePaths, cachedPackagePaths = self.get_unity_paths(basePath)
			if assetDir:
				paths.append(assetDir)

			for path in paths:
				newPath = os.path.normpath(path + "\\" + originalFilePath)
				fileExists = os.path.isfile(newPath)
				if fileExists:
					self.open_or_switch_to(newPath)
					return

			# Unity search last resort: Try to find path relative to unity package paths with versions sepecified in names
			#   For example, when target path is:
			#     "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#   Then it will find (if it exists):
			#     "[UnityProject]\Library\PackageCache\com.unity.render-pipelines.core@7.3.1\ShaderLibrary\Common.hlsl"
			targetPathParts = originalFilePath.split("\\")
			if len(targetPathParts) >= 3 and targetPathParts[0].lower() == "packages":
				packageName = targetPathParts[1]
				targetRelative = "\\".join(targetPathParts[2:])
				packagePaths = embeddedPackagePaths + cachedPackagePaths
				embeddedPackagePaths.extend(packagePaths)

				for packagePath in packagePaths:
					if os.path.basename(packagePath).split("@")[0] == packageName:
						targetFile = os.path.normpath(os.path.join(packagePath, targetRelative))
						if os.path.isfile(targetFile):
							self.open_or_switch_to(targetFile)
							return

				# Check if we are in a packages repository like how github.com/Unity-Technologies/Graphics is
				# organized. To determine this we have check each folder within each of parent and see if it matches
				# the package name.
				lastLength = -1
				currentDir = basePath
				while len(currentDir) != lastLength:
					lastLength = len(currentDir)
					currentDir = os.path.dirname(currentDir)
					targetFile = os.path.normpath(currentDir + "\\" + packageName + "\\" + targetRelative)
					if os.path.isfile(targetFile):
						self.open_or_switch_to(targetFile)
						return


	def want_event(self):
		return True

	def is_enabled(self):
		return sublime.load_settings("HLSL Syntax.sublime-settings").get("OpenHeaderEnabled", True)

	def is_visible(self, event):
		if self.is_enabled() == False:
			return False

		view = self.view

		mousePos = view.window_to_text((event["x"], event["y"]))
		scopesStr = view.scope_name(mousePos)
		scopeList = scopesStr.split(' ')
		for scope in scopeList:
			if scope == "meta.preprocessor.include.hlsl":
				posLine = view.line(mousePos)
				for index in range(posLine.a, posLine.b):
					newScopesStr = view.scope_name(index)
					newScopeList = newScopesStr.split(' ')
					for newScope in newScopeList:
						if newScope == "string.quoted.double.include.hlsl" or newScope == "string.quoted.other.lt-gt.include.hlsl":
							self.pos = index
							return True
		self.pos = -1
		return False

	def open_or_switch_to(self, targetFile):
		fileView = sublime.active_window().find_open_file(targetFile)
		if fileView == None:
			fileView = sublime.active_window().open_file(targetFile)
		sublime.active_window().focus_view(fileView)

	def get_unity_paths(self, basePath):
		"""
		Returns a tuple of unity paths which can be used to find project/package relative files. Tuple in \
		order of relavance.

		Args:
			basePath (string): Target files parent directory.

		Returns:
			tuple: Returns a tuple of paths:
				- [project root]/Assets (or None if can't be found)
				- list of folders in [project root]/Packages
				- list of folders in [project root]/Library/PackageCache
		"""

		lastLength = -1
		currentDir = basePath
		while len(currentDir) != lastLength:
			lastLength = len(currentDir)
			currentDir = os.path.dirname(currentDir)
			assetsDir = os.path.normpath(currentDir + "\\Assets")
			packagesDir = os.path.normpath(currentDir + "\\Packages")
			packageCacheDir = os.path.normpath(currentDir + "\\Library\\PackageCache")

			# If both Assets and Packages folders exist then assume it is the project's root, but don't rely on
			# Library/PackageCache folder existing in case it hasn't been generated yet.
			if os.path.isdir(assetsDir) and os.path.isdir(packagesDir):
				embeddedPackagePaths = [packagesDir + "\\" + p for p in next(os.walk(packagesDir))[1]]
				cachedPackagePaths = []
				if os.path.isdir(packageCacheDir):
					cachedPackagePaths = [packageCacheDir + "\\" + p for p in next(os.walk(packageCacheDir))[1]]
				return (assetsDir, embeddedPackagePaths, cachedPackagePaths)

		return (None, [], [])


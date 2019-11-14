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

			# Search order is from absolute path of launching file, then list order of user paths
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

			for path in paths:
				newPath = path + originalFilePath
				fileExists = os.path.isfile(newPath)
				if fileExists:
					fileView = sublime.active_window().find_open_file(newPath)
					if fileView == None:
						fileView = sublime.active_window().open_file(newPath)
					sublime.active_window().focus_view(fileView)
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
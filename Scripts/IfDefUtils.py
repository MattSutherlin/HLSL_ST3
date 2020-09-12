import sublime
import sublime_plugin

PreprocessorBlockListScanDown = {
	"if",
	"ifdef",
	"ifndef"
}

PreprocessorBlockListScanUp = {
	"endif"
}

PreprocessorBlockListScanBoth = {
	"elif",
	"else"
}

def FormatIfDefLocation(file, row, col):
	return "%s:%d:%d" % (file, row + 1, col)

class IfDefMatchListener(sublime_plugin.EventListener):
	def on_hover(sef, view, point, hover_zone):
		if sublime.load_settings("HLSL Syntax.sublime-settings").get("IfDefMatchEnabled", True) == False:
			return

		def on_navigate(href):
			view.window().open_file(
				href,
				sublime.ENCODED_POSITION | sublime.FORCE_GROUP)

		def do_hover(view, point, categoryText, href, hrefText):
			hoverBody = """
				<body id=show-intrinsic>
					<style>
						body {
							font-family: system;
						}
	                    h1 {
	                        font-size: 1.1rem;
	                        font-weight: bold;
	                        margin: 0 0 0.25em 0;
	                    }
						p {
							font-size: 1.0rem;
							margin: 0;
						}
					</style>
					<h1>%s:</h1>
					<br>
					<p><a href="%s">%s</a></p>
				</body>
			""" % (categoryText, href, hrefText)

			view.show_popup(hoverBody, flags=sublime.HIDE_ON_MOUSE_MOVE_AWAY, location=point, max_width=1024, on_navigate=on_navigate)

		scopesStr = view.scope_name(point)
		scopeList = scopesStr.split(' ')
		for scope in scopeList:
			if scope == "keyword.control.preprocessor.hlsl":
				posWord = view.word(point)
				ifdefWord = view.substr(posWord)
				if ifdefWord in PreprocessorBlockListScanDown:
					stackSize = 0
					offsetToNextLine = view.full_line(point).size()
					viewLength = view.size()
					while (point + offsetToNextLine <= viewLength):
						newLine = view.full_line(point + offsetToNextLine)
						trimmedNewLineStart = view.find_by_class(newLine.begin(), True, sublime.CLASS_WORD_START)
						newLineScopesStr = view.scope_name(trimmedNewLineStart)
						newLineScopeList = newLineScopesStr.split(' ')
						for newScope in newLineScopeList:
							if newScope == "keyword.control.preprocessor.hlsl":
								newLineWord = view.substr(newLine).lstrip()
								newLineWordForMatch = newLineWord.lstrip("#").split()[0]
								if newLineWordForMatch in PreprocessorBlockListScanDown:
									stackSize += 1
								elif newLineWordForMatch in PreprocessorBlockListScanUp:
									if stackSize == 0:
										row, col = view.rowcol(newLine.begin())
										do_hover(view, point, "Block End", FormatIfDefLocation(view.file_name(), row, col), newLineWord.rstrip())
										return
									else:
										stackSize -= 1
								break
						offsetToNextLine += newLine.size()
				elif ifdefWord in PreprocessorBlockListScanUp:
					stackSize = 0
					row, col = view.rowcol(point)
					offsetToNextLine = col + 1
					while (point - offsetToNextLine > 0):
						newLine = view.full_line(point - offsetToNextLine)
						trimmedNewLineStart = view.find_by_class(newLine.begin(), True, sublime.CLASS_WORD_START)
						newLineScopesStr = view.scope_name(trimmedNewLineStart)
						newLineScopeList = newLineScopesStr.split(' ')
						for newScope in newLineScopeList:
							if newScope == "keyword.control.preprocessor.hlsl":
								newLineWord = view.substr(newLine).lstrip()
								newLineWordForMatch = newLineWord.lstrip("#").split()[0]
								if newLineWordForMatch in PreprocessorBlockListScanUp:
									stackSize += 1
								elif newLineWordForMatch in PreprocessorBlockListScanDown:
									if stackSize == 0:
										row, col = view.rowcol(newLine.begin())
										do_hover(view, point, "Block Start", FormatIfDefLocation(view.file_name(), row, col), newLineWord.rstrip())
										return
									else:
										stackSize -= 1
								break
						offsetToNextLine += newLine.size()
				elif ifdefWord in PreprocessorBlockListScanBoth:
					# Implement this!
					return
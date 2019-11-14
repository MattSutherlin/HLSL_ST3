import sublime
import sublime_plugin

import json
import os


DomainAttributes = [
	"\"tri\"",
	"\"quad\"",
	"\"isoline\""
]

OutputTopologyAttributes = [
	"\"point\"",
	"\"line\"",
	"\"triangle_cw\"",
	"\"triangle_ccw\""
]

PartitioningAttributes = [
	"\"integer\"",
	"\"fractional_even\"",
	"\"fractional_odd\"",
	"\"pow2\""
]


def cache_path():
	return os.path.join(sublime.cache_path(), "HLSL Syntax")


def write_menu(menu):
	menu_path = os.path.join(cache_path(), "Context.sublime-menu")
	with open(menu_path, "w+") as cache:
		cache.write(json.dumps(menu, cache))


def plugin_loaded():
	os.makedirs(cache_path(), exist_ok=True)
	write_menu([])


def plugin_unloaded():
	try:
		os.remove(os.path.join(cache_path(), "Context.sublime-menu"))
	except:
		pass


class SwapAttributeParamsCommand(sublime_plugin.TextCommand):
	def run(self, edit, scopePos, replacement):
		scopeRegion = self.view.extract_scope(scopePos)
		token = self.view.substr(scopeRegion)
		self.view.replace(edit, scopeRegion, replacement)


class SwapAttributeParamsListener(sublime_plugin.EventListener):
	def get_selected(self, view, event):
		mousePos = view.window_to_text((event["x"], event["y"]))
		scopesStr = view.scope_name(mousePos)
		scopeList = scopesStr.split(' ')

		scopeType = -1
		scopePos = -1

		for scope in scopeList:
			if scope == "meta.attribute.domain.hlsl" or scope == "meta.attribute.outputtopology.hlsl" or scope == "meta.attribute.partitioning.hlsl":
				if scope == "meta.attribute.domain.hlsl":
					scopeType = 0
				elif scope == "meta.attribute.outputtopology.hlsl":
					scopeType = 1
				elif scope == "meta.attribute.partitioning.hlsl":
					scopeType = 2
				posLine = view.line(mousePos)
				for index in range(posLine.a, posLine.b):
					newScopesStr = view.scope_name(index)
					newScopeList = newScopesStr.split(' ')
					for newScope in newScopeList:
						if newScope == "string.quoted.double.hlsl":
							scopePos = index
							return (scopePos, scopeType)
		return (scopePos, scopeType)

	def on_post_text_command(self, view, command, args):
			if command == "context_menu":
				write_menu([])

	def on_text_command(self, view, command, args):
		if sublime.load_settings("HLSL Syntax.sublime-settings").get("AttributeParamSwapEnabled", True) == False:
			return
		if command == "context_menu":
			scopePos, scopeType  = self.get_selected(view, args['event'])
			if scopePos is -1 or scopeType is -1:
				return

			AttributeList = []
			if scopeType == 0:
				AttributeList = DomainAttributes
			elif scopeType == 1:
				AttributeList = OutputTopologyAttributes
			elif scopeType == 2:
				AttributeList = PartitioningAttributes
			
			context_menu = [{
				"caption": "Swap Attribute Param",
				"children": []
			}]
			for entry in AttributeList:
				context_menu[0]["children"].append({
					"caption": entry,
					"command": "swap_attribute_params",
					"args": {
						"scopePos": scopePos,
						"replacement": entry
					}
					})
			write_menu(context_menu)
from .IntrinsicHover import IntrinsicHoverListener
from .OpenIncludedFile import OpenIncludedHlslFileCommand
from .SwapAttributeParams import SwapAttributeParamsCommand
from .SwapAttributeParams import SwapAttributeParamsListener


def reload_package(package):
	assert(hasattr(package, "__package__"))
	fn = package.__file__
	import os
	fn_dir = os.path.dirname(fn) + os.sep
	module_visit = {fn}
	del fn

	import imp
	imp.reload(package)


def plugin_loaded():
	reload_package(IntrinsicHover)
	reload_package(OpenIncludedFile)
	reload_package(SwapAttributeParams)
	SwapAttributeParams.plugin_loaded()

def plugin_unloaded():
	SwapAttributeParams.plugin_unloaded()
	reload_package(IntrinsicHover)
	reload_package(OpenIncludedFile)
	reload_package(SwapAttributeParams)
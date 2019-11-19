from .IntrinsicHover import IntrinsicHover
from .OpenIncludedFile import OpenIncludedHlslFileCommand
from .SwapAttributeParams import SwapAttributeParamsCommand
from .SwapAttributeParams import SwapAttributeParamsListener


def plugin_loaded():
	SwapAttributeParams.plugin_loaded()

def plugin_unloaded():
	SwapAttributeParams.plugin_unloaded()
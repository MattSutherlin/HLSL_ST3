# HLSL_ST3
HLSL tools for Sublime Text 3

I'm just trying to provide a better, more fully featured editing environment for HLSL.  Because it's kind of ridiculous that we don't already have a real IDE for this.

## The Syntax
A large part of that is the syntax file, where the goal is to hook as much as possile into Sublime's symbol indexer in the most correct, most granular way possible.  Functions (and function-esque macros) will link between defintions and call sites in both directions, via GoTo Defintion and GoTo Reference.  Structs link from usage to definition, via GoTo Definition.  Most everything else will at least get scoped for theme coloration, but more universal coverage towards scope-aware autocompletions is a (long-term) work in progress.

## The Scripts
While the syntax is the core of the plugin, the scripts are where I'm hoping to take it from a simple text editing experience and into being a real IDE experience.

#### Open Headers
You can right click an include statement to open the referenced file.  By default, it will attempt to open relative to the same directory as the including file, but user settings allow additional include paths to be provided.

<img src="https://raw.githubusercontent.com/MattSutherlin/HLSLToolsImages/master/OpenHeader.png"/>

#### Get Intrinsic Information On Hover
Mousing over a language intrinsic will give you a popup with the MSDN description and a link to the MSDN page.  Now you don't have to forever keep a tab open for the main intrinsics page, and let's be real, anyone reading this probably does.

<img src="https://raw.githubusercontent.com/MattSutherlin/HLSLToolsImages/master/IntrinsicHover.png"/>

#### Swap String Literal Params On Attributes
Can't ever remember what strings are valid for the paritioning attribute of a hull shader?  Me either, and now you shouldn't have to.  Right click any stage function attribute with a string literal param and get a list of the valid options to insert.

<img src="https://raw.githubusercontent.com/MattSutherlin/HLSLToolsImages/master/SwapAttributeParams.png"/>

## Lastly
Everything works best when your shader source is in an active sublime-project file.  Otherwise, some features may only work across open files instead of all of your files.

Best with my HLSL-centric theme, Rocklobster:  https://github.com/MattSutherlin/RockLobster_ST3Theme

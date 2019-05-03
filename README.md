# HLSL_ST3
HLSL tools for Sublime Text 3

I'm just trying to provide a better, more fully featured editing environment for HLSL.

A large part of that is the syntax file, where the goal is to hook as much as possile into Sublime's symbol indexer in the most correct, most granular way possible.  Functions (and function-esque macros) will link between defintions and call sites in both directions, via GoTo Defintion and GoTo Reference.  Structs link from usage to definition, via GoTo Definition.  Most everything else will at least get scoped for theme coloration, but more universal coverage towards scope-aware autocompletions is a (long-term) work in progress.

Additionally, right clicking include directives to open the referenced file is now supported.  By default, it will attempt to open relative to the same directory as the incuding file, but user settings allow additional include paths to be provided.

Everything works best when your shader source is in an active sublime-project file.  Otherwise, some features may only work across open files instead of all of your files.

Best with my HLSL-centric theme, Rocklobster:  https://github.com/MattSutherlin/RockLobster_ST3Theme

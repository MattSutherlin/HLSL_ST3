# HLSL_ST3
HLSL syntax highlighting for Sublime Text 3

I'm just trying to provide a better, more fully featured syntax definition for HLSL.

A large part of that is hooking up various things to Sublime's symbol indexer, making them work with GoToDefinition.  So far I have functions and structs working, and I have function definitions separated from call-sites in an effort to keep the symbol list a little cleaner.  The eventual goal is to make everything properly indexed in a way that it's reasonable to create scope-aware autocompletions and really be able to look at Sublime as a real HLSL IDE.

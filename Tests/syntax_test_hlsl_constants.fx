// SYNTAX TEST "HLSL.sublime-syntax"


// Numerics

  0
//^ constant.numeric.hlsl
  0f
//^ -constant.numeric.hlsl
  0H
//^ -constant.numeric.hlsl
  0.0
//^^^ constant.numeric.hlsl
  0.f
//^^^ constant.numeric.hlsl
  0.0F
//^^^^ constant.numeric.hlsl
  .0f
//^^^ constant.numeric.hlsl
  .0h
//^^^ constant.numeric.hlsl
  .f
//^^ -constant.numeric.hlsl
  0x0
//^^^ constant.numeric.hlsl
  0X0F
//^^^^ constant.numeric.hlsl
  0x0u
//^^^^ constant.numeric.hlsl
  1.5e+01
//^^^^^^^ constant.numeric.hlsl
  1.5E-05
//^^^^^^^ constant.numeric.hlsl
  1.5e5
//^^^^^ constant.numeric.hlsl
  1e-5
//^^^^ constant.numeric.hlsl
  .
//^ -constant.numeric.hlsl


// Language

  true
//^^^^ constant.language.hlsl
  false
//^^^^^ constant.language.hlsl
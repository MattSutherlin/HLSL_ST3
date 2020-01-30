// SYNTAX TEST "HLSL.sublime-syntax"


// Macro functions

  #define MACRO_FUNCTION(paramName, paramValue) float paramName = paramValue;
//        ^^^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^^^ -entity.name.function.hlsl
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                       ^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.hlsl
//                                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.hlsl

//^ -meta.function.hlsl

  #define MACRO_FUNCTION(param1, param2) \
//        ^^^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^^^ -entity.name.function.hlsl
//                      ^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                                      ^^ -meta.function.parameters.hlsl
//                       ^^^^^^^^^^^^^^^ meta.function.parameters.hlsl
//                                      ^ meta.function.hlsl
    param1 += param2; \
//^ meta.function.hlsl
    param1 *= 5;
//^ meta.function.hlsl

//^ -meta.function.hlsl

  #define MACRO_FUNCTION(FuncName) \
//        ^^^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^^^ -entity.name.function.hlsl
//                      ^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                                ^^ -meta.function.parameters.hlsl
//                       ^^^^^^^^^ meta.function.parameters.hlsl
//                                  ^ meta.function.hlsl
    float FuncName_##FuncName(float param1, float param2) \
    {
      param1 += param2; \
//^ meta.function.hlsl
      param1 *= 5; \
//^ meta.function.hlsl
    }
//^ meta.function.hlsl

//^ -meta.function.hlsl


// Loose functions

  void FuncForwardDeclare();
//     ^^^^^^^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^ -entity.name.function.hlsl
//                       ^^^ -entity.name.function.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                         ^^ -meta.function.parameters.hlsl
//                        ^ meta.function.parameters.hlsl

// ^ -meta.function.hlsl

  float FunctionName(float param1, int2 param2, structName param3)
//      ^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^ -entity.name.function.hlsl
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                                                                ^ -meta.function.parameters.hlsl
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.hlsl
  {
     return result;
  }
//^ meta.function.hlsl
// ^ -meta.function.hlsl

  float FunctionName(float param1, int param2 = (CONST1 | CONST2))
//      ^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^ -entity.name.function.hlsl
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                                                                ^ -meta.function.parameters.hlsl
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.hlsl
  {
     return result;
  }
//^ meta.function.hlsl
// ^ -meta.function.hlsl

  float FunctionName(float param1, int param2 = (CONST1 | CONST2))
//      ^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^ -entity.name.function.hlsl
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                                                                ^ -meta.function.parameters.hlsl
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.hlsl
  {
    {
      return result;
    }
  }
//^ meta.function.hlsl
// ^ -meta.function.hlsl

  float2 FunctionName(float param1, int2 param2, structName param3)
//       ^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^^ -entity.name.function.hlsl
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//^^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                                                                 ^ -meta.function.parameters.hlsl
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.hlsl
  {
     return result;
  }
//^ meta.function.hlsl
// ^ -meta.function.hlsl

  float2x2 FunctionName(float param1, int2 param2, structName param3)
//         ^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^^^^ -entity.name.function.hlsl
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//^^^^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                                                                   ^ -meta.function.parameters.hlsl
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.hlsl
  {
     return result;
  }
//^ meta.function.hlsl
// ^ -meta.function.hlsl

  varname FunctionName(float param1, int2 param2, structName param3)
//        ^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^^^ -entity.name.function.hlsl
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//^^^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                                                                  ^ -meta.function.parameters.hlsl
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.hlsl
  {
     return result;
  }
//^ meta.function.hlsl
// ^ -meta.function.hlsl

  varname FunctionName(float param1, int2 param2, inout structName param3, uniform bool IsTrue = false)
//        ^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^^^ -entity.name.function.hlsl
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//                     ^^^^^ storage.type.scalar.hlsl
//                                   ^^^^ storage.type.vector.hlsl
//                                                ^^^^^ variable.other.copy-modifier.hlsl
//                                                                         ^^^^^^^ storage.modifier.hlsl
//                                                                                 ^^^^ storage.type.scalar.hlsl
//                                                                                               ^^^^^ constant.language.hlsl
//^^^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                                                                                                     ^ -meta.function.parameters.hlsl
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.hlsl
  {
    float result = FunctionName(param1, param2, param3);
//                 ^^^^^^^^^^^^ variable.function.hlsl
//  ^^^^^^^^^^^^^^^ -variable.function.hlsl
//                             ^^^^^^^^^^^^^^^^^^^^^^^^^ -variable.function.hlsl
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.hlsl
//  ^^^^^^^^^^^^^^^ -meta.function-call.hlsl
//                                                     ^ -meta.function-call.hlsl

    return 5.0f;
//  ^^^^^^ keyword.control.hlsl
//        ^^^^^^ -keyword.control.hlsl
//         ^^^^ constant.numeric.hlsl
//  ^^^^^^^ -constant.numeric.hlsl
//             ^ -constant.numeric.hlsl
  }
//^ meta.function.hlsl
// ^ -meta.function.hlsl
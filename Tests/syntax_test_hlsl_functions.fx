// SYNTAX TEST "HLSL.sublime-syntax"


{
  #define MACRO_FUNCTION(paramName, paramValue) float paramName = paramValue;
//        ^^^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^^^ -entity.name.function.hlsl
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl

  float FunctionName(float param1, int2 param2, structName param3)
//      ^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^ -entity.name.function.hlsl
//                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
  {
     return result;
  }

  float2 FunctionName(float param1, int2 param2, structName param3)
//       ^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^^ -entity.name.function.hlsl
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
  {
     return result;
  }

  float2x2 FunctionName(float param1, int2 param2, structName param3)
//         ^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^^^^ -entity.name.function.hlsl
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
  {
     return result;
  }

  varname FunctionName(float param1, int2 param2, structName param3)
//        ^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^^^ -entity.name.function.hlsl
//                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
  {
     return result;
  }

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
}
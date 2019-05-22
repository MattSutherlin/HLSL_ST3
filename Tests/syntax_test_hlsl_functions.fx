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
  {
    float result = FunctionName(param1, param2, param3);
//                 ^^^^^^^^^^^^ variable.function.hlsl
//  ^^^^^^^^^^^^^^^ -variable.function.hlsl
//                             ^^^^^^^^^^^^^^^^^^^^^^^^^ -variable.function.hlsl
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.hlsl
//  ^^^^^^^^^^^^^^^ -meta.function-call.hlsl
//                                                     ^ -meta.function-call.hlsl

     return result;
  }
}
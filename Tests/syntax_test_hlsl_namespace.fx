// SYNTAX TEST "HLSL.sublime-syntax"


{
  namespace TestSpace
//^^^^^^^^^ keyword.control.namespace.hlsl
//         ^^^^^^^^^^ -keyword.control.namespace.hlsl
//          ^^^^^^^^^ storage.type.namespace.hlsl
//^^^^^^^^^^ -storage.type.namespace.hlsl
  {
    varname FunctionName(float param1, int2 param2, inout structName param3, uniform bool IsTrue = false)
//          ^^^^^^^^^^^^ entity.name.function.hlsl
//  ^^^^^^^^ -entity.name.function.hlsl
//                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//                       ^^^^^ storage.type.scalar.hlsl
//                                     ^^^^ storage.type.vector.hlsl
//                                                  ^^^^^ variable.other.copy-modifier.hlsl
//                                                                           ^^^^^^^ storage.modifier.hlsl
//                                                                                   ^^^^ storage.type.scalar.hlsl
//                                                                                                 ^^^^^ constant.language.hlsl
    {
      float result = FunctionName(param1, param2, param3);
//                   ^^^^^^^^^^^^ variable.function.hlsl
//    ^^^^^^^^^^^^^^^ -variable.function.hlsl
//                               ^^^^^^^^^^^^^^^^^^^^^^^^^ -variable.function.hlsl
//                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.hlsl
//    ^^^^^^^^^^^^^^^ -meta.function-call.hlsl
//                                                       ^ -meta.function-call.hlsl

      return 5.0f;
//    ^^^^^^ keyword.control.hlsl
//          ^^^^^^ -keyword.control.hlsl
//           ^^^^ constant.numeric.hlsl
//    ^^^^^^^ -constant.numeric.hlsl
//               ^ -constant.numeric.hlsl
    }

    struct varname
//  ^^^^^^ storage.type.struct.hlsl
//        ^^^^^^^^ -storage.type.struct.hlsl
//         ^^^^^^^ entity.name.type.struct.hlsl
//  ^^^^^^^ -entity.name.type.struct.hlsl
    {
      float varname;
//    ^^^^^ storage.type.scalar.hlsl
//         ^^^^^^^^^ -storage.type.scalar.hlsl
      int3 varname;
//    ^^^^ storage.type.vector.hlsl
//        ^^^^^^^^^ -storage.type.vector.hlsl
      bool4x4 varname;
//    ^^^^^^^ storage.type.matrix.hlsl
//           ^^^^^^^^^ -storage.type.matrix.hlsl
      varname FunctionName(float param1, int2 param2, inout structName param3, uniform bool IsTrue = false)
//            ^^^^^^^^^^^^ entity.name.function.hlsl
//    ^^^^^^^^ -entity.name.function.hlsl
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//                         ^^^^^ storage.type.scalar.hlsl
//                                       ^^^^ storage.type.vector.hlsl
//                                                    ^^^^^ variable.other.copy-modifier.hlsl
//                                                                             ^^^^^^^ storage.modifier.hlsl
//                                                                                     ^^^^ storage.type.scalar.hlsl
//                                                                                                   ^^^^^ constant.language.hlsl
      {
        float result = FunctionName(param1, param2, param3);
//                     ^^^^^^^^^^^^ variable.function.hlsl
//      ^^^^^^^^^^^^^^^ -variable.function.hlsl
//                                 ^^^^^^^^^^^^^^^^^^^^^^^^^ -variable.function.hlsl
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.hlsl
//      ^^^^^^^^^^^^^^^ -meta.function-call.hlsl
//                                                         ^ -meta.function-call.hlsl

        return 5.0f;
//      ^^^^^^ keyword.control.hlsl
//            ^^^^^^ -keyword.control.hlsl
//             ^^^^ constant.numeric.hlsl
//      ^^^^^^^ -constant.numeric.hlsl
//                 ^ -constant.numeric.hlsl
      }
    };

    typedef struct
//  ^^^^^^^ keyword.control.hlsl
//         ^^^^^^^ -keyword.control.hlsl
//          ^^^^^^ storage.type.struct.hlsl
//  ^^^^^^^^ -storage.type.struct.hlsl
    {
      float varname;
//    ^^^^^ storage.type.scalar.hlsl
//         ^^^^^^^^^ -storage.type.scalar.hlsl
      int3 varname;
//    ^^^^ storage.type.vector.hlsl
//        ^^^^^^^^^ -storage.type.vector.hlsl
      bool4x4 varname;
//    ^^^^^^^ storage.type.matrix.hlsl
//           ^^^^^^^^^ -storage.type.matrix.hlsl
      varname FunctionName(float param1, int2 param2, inout structName param3, uniform bool IsTrue = false)
//            ^^^^^^^^^^^^ entity.name.function.hlsl
//    ^^^^^^^^ -entity.name.function.hlsl
//                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//                         ^^^^^ storage.type.scalar.hlsl
//                                       ^^^^ storage.type.vector.hlsl
//                                                    ^^^^^ variable.other.copy-modifier.hlsl
//                                                                             ^^^^^^^ storage.modifier.hlsl
//                                                                                     ^^^^ storage.type.scalar.hlsl
//                                                                                                   ^^^^^ constant.language.hlsl
      {
        float result = FunctionName(param1, param2, param3);
//                     ^^^^^^^^^^^^ variable.function.hlsl
//      ^^^^^^^^^^^^^^^ -variable.function.hlsl
//                                 ^^^^^^^^^^^^^^^^^^^^^^^^^ -variable.function.hlsl
//                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.hlsl
//      ^^^^^^^^^^^^^^^ -meta.function-call.hlsl
//                                                         ^ -meta.function-call.hlsl

        return 5.0f;
//      ^^^^^^ keyword.control.hlsl
//            ^^^^^^ -keyword.control.hlsl
//             ^^^^ constant.numeric.hlsl
//      ^^^^^^^ -constant.numeric.hlsl
//                 ^ -constant.numeric.hlsl
      }
    } s_struct_name;
//    ^^^^^^^^^^^^^ entity.name.type.struct.hlsl
//  ^^ -entity.name.type.struct.hlsl
//                 ^ -entity.name.type.struct.hlsl
  }
}
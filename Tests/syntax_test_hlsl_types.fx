// SYNTAX TEST "HLSL.sublime-syntax"


// Scalar types

  bool varname;
//^^^^ storage.type.scalar.hlsl
//    ^^^^^^^^^ -storage.type.scalar.hlsl
  bool varname = true;
//^^^^ storage.type.scalar.hlsl
//    ^^^^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  bool varname = bool(5);
//^^^^ storage.type.scalar.hlsl
//    ^^^^^^^^^^^ -storage.type.scalar.hlsl
//               ^^^^ storage.type.scalar.hlsl
//                   ^^^^ -storage.type.scalar.hlsl
//^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                    ^ constant.numeric.hlsl
//                     ^^ -constant.numeric.hlsl

  double varname;
//^^^^^^ storage.type.scalar.hlsl
//      ^^^^^^^^^ -storage.type.scalar.hlsl
  double varname = 5.0;
//^^^^^^ storage.type.scalar.hlsl
//      ^^^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  double varname = double(5.0);
//^^^^^^ storage.type.scalar.hlsl
//      ^^^^^^^^^^^ -storage.type.scalar.hlsl
//                 ^^^^^^ storage.type.scalar.hlsl
//                       ^^^^^^ -storage.type.scalar.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                        ^^^ constant.numeric.hlsl
//                           ^^ -constant.numeric.hlsl

  dword varname;
//^^^^^ storage.type.scalar.hlsl
//     ^^^^^^^^^ -storage.type.scalar.hlsl
  dword varname = 5;
//^^^^^ storage.type.scalar.hlsl
//     ^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  dword varname = dword(5.0);
//^^^^^ storage.type.scalar.hlsl
//     ^^^^^^^^^^^ -storage.type.scalar.hlsl
//                ^^^^^ storage.type.scalar.hlsl
//                     ^^^^^^ -storage.type.scalar.hlsl
//^^^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                      ^^^ constant.numeric.hlsl
//                         ^^ -constant.numeric.hlsl

  half varname;
//^^^^ storage.type.scalar.hlsl
//    ^^^^^^^^^ -storage.type.scalar.hlsl
  half varname = 5.0h;
//^^^^ storage.type.scalar.hlsl
//    ^^^^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  half varname = half(5);
//^^^^ storage.type.scalar.hlsl
//    ^^^^^^^^^^^ -storage.type.scalar.hlsl
//               ^^^^ storage.type.scalar.hlsl
//                   ^^^^ -storage.type.scalar.hlsl
//^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                    ^ constant.numeric.hlsl
//                     ^^ -constant.numeric.hlsl

  float varname;
//^^^^^ storage.type.scalar.hlsl
//     ^^^^^^^^^ -storage.type.scalar.hlsl
  float varname = 5.0f;
//^^^^^ storage.type.scalar.hlsl
//     ^^^^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  float varname = float(5.0);
//^^^^^ storage.type.scalar.hlsl
//     ^^^^^^^^^^^ -storage.type.scalar.hlsl
//                ^^^^^ storage.type.scalar.hlsl
//                     ^^^^^^ -storage.type.scalar.hlsl
//^^^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                      ^^^ constant.numeric.hlsl
//                         ^^ -constant.numeric.hlsl

  int varname;
//^^^ storage.type.scalar.hlsl
//   ^^^^^^^^^ -storage.type.scalar.hlsl
  int varname = 5;
//^^^ storage.type.scalar.hlsl
//   ^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  int varname = int(5.0);
//^^^ storage.type.scalar.hlsl
//   ^^^^^^^^^^^ -storage.type.scalar.hlsl
//              ^^^ storage.type.scalar.hlsl
//                 ^^^^^^ -storage.type.scalar.hlsl
//^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                  ^^^ constant.numeric.hlsl
//                     ^^ -constant.numeric.hlsl

  min10float varname;
//^^^^^^^^^^ storage.type.scalar.hlsl
//          ^^^^^^^^^ -storage.type.scalar.hlsl
  min10float varname = 5.0f;
//^^^^^^^^^^ storage.type.scalar.hlsl
//          ^^^^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  min10float varname = min10float(5.0);
//^^^^^^^^^^ storage.type.scalar.hlsl
//          ^^^^^^^^^^^ -storage.type.scalar.hlsl
//                     ^^^^^^^^^^ storage.type.scalar.hlsl
//                               ^^^^^^ -storage.type.scalar.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                                ^^^ constant.numeric.hlsl
//                                   ^^ -constant.numeric.hlsl

  min16float varname;
//^^^^^^^^^^ storage.type.scalar.hlsl
//          ^^^^^^^^^ -storage.type.scalar.hlsl
  min16float varname = 5.0f;
//^^^^^^^^^^ storage.type.scalar.hlsl
//          ^^^^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  min16float varname = min16float(5.0);
//^^^^^^^^^^ storage.type.scalar.hlsl
//          ^^^^^^^^^^^ -storage.type.scalar.hlsl
//                     ^^^^^^^^^^ storage.type.scalar.hlsl
//                               ^^^^^^ -storage.type.scalar.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                                ^^^ constant.numeric.hlsl
//                                   ^^ -constant.numeric.hlsl

  min12int varname;
//^^^^^^^^ storage.type.scalar.hlsl
//        ^^^^^^^^^ -storage.type.scalar.hlsl
  min12int varname = 5;
//^^^^^^^^ storage.type.scalar.hlsl
//        ^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  min12int varname = min12int(5.0);
//^^^^^^^^ storage.type.scalar.hlsl
//        ^^^^^^^^^^^ -storage.type.scalar.hlsl
//                   ^^^^^^^^ storage.type.scalar.hlsl
//                           ^^^^^^ -storage.type.scalar.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                            ^^^ constant.numeric.hlsl
//                               ^^ -constant.numeric.hlsl

  min16int varname;
//^^^^^^^^ storage.type.scalar.hlsl
//        ^^^^^^^^^ -storage.type.scalar.hlsl
  min16int varname = 5;
//^^^^^^^^ storage.type.scalar.hlsl
//        ^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  min16int varname = min16int(5.0);
//^^^^^^^^ storage.type.scalar.hlsl
//        ^^^^^^^^^^^ -storage.type.scalar.hlsl
//                   ^^^^^^^^ storage.type.scalar.hlsl
//                           ^^^^^^ -storage.type.scalar.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                            ^^^ constant.numeric.hlsl
//                               ^^ -constant.numeric.hlsl

  min16uint varname;
//^^^^^^^^^ storage.type.scalar.hlsl
//         ^^^^^^^^^ -storage.type.scalar.hlsl
  min16uint varname = 5;
//^^^^^^^^^ storage.type.scalar.hlsl
//         ^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  min16uint varname = min16uint(5.0);
//^^^^^^^^^ storage.type.scalar.hlsl
//         ^^^^^^^^^^^ -storage.type.scalar.hlsl
//                    ^^^^^^^^^ storage.type.scalar.hlsl
//                             ^^^^^^ -storage.type.scalar.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                              ^^^ constant.numeric.hlsl
//                                 ^^ -constant.numeric.hlsl

  uint varname;
//^^^^ storage.type.scalar.hlsl
//    ^^^^^^^^^ -storage.type.scalar.hlsl
  uint varname = 5;
//^^^^ storage.type.scalar.hlsl
//    ^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  uint varname = uint(5);
//^^^^ storage.type.scalar.hlsl
//    ^^^^^^^^^^^ -storage.type.scalar.hlsl
//               ^^^^ storage.type.scalar.hlsl
//                   ^^^^ -storage.type.scalar.hlsl
//^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                    ^ constant.numeric.hlsl
//                     ^^ -constant.numeric.hlsl

  void
//^^^^ storage.type.scalar.hlsl


// Vector types

  dword2 varname;
//^^^^^^^^^^^^^^^ -storage.type.vector.hlsl

  float2 varname;
//^^^^^^ storage.type.vector.hlsl
  float2 varname = { 5.0, 5.0 };
//^^^^^^ storage.type.vector.hlsl
//      ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.vector.hlsl
//^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                   ^^^ constant.numeric.hlsl
//                      ^^ -constant.numeric.hlsl
//                        ^^^ constant.numeric.hlsl
//                           ^^ -constant.numeric.hlsl
  float2 varname = float2(5.0, 5.0);
//^^^^^^ storage.type.vector.hlsl
//      ^^^^^^^^^^^ -storage.type.vector.hlsl
//                 ^^^^^^ storage.type.vector.hlsl
//                       ^^^^^^^^^^^ -storage.type.vector.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                        ^^^ constant.numeric.hlsl
//                           ^^ -constant.numeric.hlsl
//                             ^^^ constant.numeric.hlsl
//                                ^^ -constant.numeric.hlsl

  float5 varname;
//^^^^^^^^^^^^^^^ -storage.type.vector.hlsl

  void2 varname;
//^^^^^^^^^^^^^^ -storage.type.vector.hlsl
}


// Matrix types

{
  dword2x2 varname;
//^^^^^^^^^^^^^^^^^ -storage.type.matrix.hlsl

  float2x2 varname;
//^^^^^^^^ storage.type.matrix.hlsl
//        ^^^^^^^^^ -storage.type.matrix.hlsl
  float2x2 varname = { 5.0, 5.0, 5.0, 5.0 };
//^^^^^^^^ storage.type.matrix.hlsl
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.matrix.hlsl
//^^^^^^^^^^^^^^^^^^^^^ -constant.numeric.hlsl
//                     ^^^ constant.numeric.hlsl
//                        ^^ -constant.numeric.hlsl
//                          ^^^ constant.numeric.hlsl
//                             ^^ -constant.numeric.hlsl
//                               ^^^ constant.numeric.hlsl
//                                  ^^ -constant.numeric.hlsl
//                                    ^^^ constant.numeric.hlsl
//                                       ^^ -constant.numeric.hlsl

  float4x5 varname;
//^^^^^^^^^^^^^^^^^ -storage.type.matrix.hlsl

  void2x2 varname;
//^^^^^^^^^^^^^^^^ -storage.type.vector.hlsl


// Texture types

  Texture1D varname : register(t5);
//^^^^^^^^^ storage.type.texture.hlsl
//         ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTexture1D varname : register(t5);
//^^^^^^^^^^^ storage.type.texture.hlsl
//           ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  Texture1DArray varname : register(t5);
//^^^^^^^^^^^^^^ storage.type.texture.hlsl
//              ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTexture1DArray varname : register(t5);
//^^^^^^^^^^^^^^^^ storage.type.texture.hlsl
//                ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  Texture1DMS varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTexture1DMS varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  Texture1DMSArray varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTexture1DMSArray varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  Texture2D varname : register(t5);
//^^^^^^^^^ storage.type.texture.hlsl
//         ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTexture2D varname : register(t5);
//^^^^^^^^^^^ storage.type.texture.hlsl
//           ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  Texture2DArray varname : register(t5);
//^^^^^^^^^^^^^^ storage.type.texture.hlsl
//              ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTexture2DArray varname : register(t5);
//^^^^^^^^^^^^^^^^ storage.type.texture.hlsl
//                ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  Texture2DMS varname : register(t5);
//^^^^^^^^^^^ storage.type.texture.hlsl
//           ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTexture2DMS varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  Texture2DMSArray varname : register(t5);
//^^^^^^^^^^^^^^^^ storage.type.texture.hlsl
//                ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTexture2DMSArray varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  Texture3D varname : register(t5);
//^^^^^^^^^ storage.type.texture.hlsl
//         ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTexture3D varname : register(t5);
//^^^^^^^^^^^ storage.type.texture.hlsl
//           ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  Texture3DArray varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTexture3DArray varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  Texture3DMS varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTexture3DMS varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  Texture3DMSArray varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTexture3DMSArray varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  TextureCube varname : register(t5);
//^^^^^^^^^^^ storage.type.texture.hlsl
//           ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTextureCube varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  TextureCubeArray varname : register(t5);
//^^^^^^^^^^^^^^^^ storage.type.texture.hlsl
//                ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTextureCubeArray varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  TextureCubeMS varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTextureCubeMS varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  TextureCubeMSArray varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl
  RWTextureCubeMSArray varname : register(t5);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.texture.hlsl


// Structs

  struct varname
//^^^^^^ storage.type.struct.hlsl
//      ^^^^^^^^ -storage.type.struct.hlsl
//       ^^^^^^^ entity.name.type.struct.hlsl
//^^^^^^^ -entity.name.type.struct.hlsl
  {
    float varname;
//  ^^^^^ storage.type.scalar.hlsl
//       ^^^^^^^^^ -storage.type.scalar.hlsl
    int3 varname;
//  ^^^^ storage.type.vector.hlsl
//      ^^^^^^^^^ -storage.type.vector.hlsl
    bool4x4 varname;
//  ^^^^^^^ storage.type.matrix.hlsl
//         ^^^^^^^^^ -storage.type.matrix.hlsl
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
//  ^ meta.function.hlsl
//   ^ -meta.function.hlsl

    #if defined(TOKEN)
//  ^^^ keyword.control.preprocessor.hlsl
//      ^^^^^^^ keyword.control.preprocessor.hlsl
//     ^ -keyword.control.preprocessor.hlsl
//             ^^^^^^^ -keyword.control.preprocessor.hlsl
//              ^^^^^ constant.other.hlsl
//  ^^^^^^^^^^^^ -constant.other.hlsl
//                   ^ -constant.other.hlsl
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
//    ^ meta.function.hlsl
//     ^ - meta.function.hlsl
    #endif
//  ^^^^^^ keyword.control.preprocessor.hlsl
  };
//^^ meta.struct.hlsl
//  ^ -meta.struct.hlsl

  typedef struct
//^^^^^^^ keyword.control.hlsl
//       ^^^^^^^ -keyword.control.hlsl
//        ^^^^^^ storage.type.struct.hlsl
//^^^^^^^^ -storage.type.struct.hlsl
  {
    float4 varname;
//  ^^^^^^ storage.type.vector.hlsl
//        ^^^^^^^^^ -storage.type.vector.hlsl
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
//  ^ meta.function.hlsl
//   ^ -meta.function.hlsl
  } s_struct_name;
//^ meta.struct.hlsl
// ^ -meta.struct.hlsl
//  ^^^^^^^^^^^^^ entity.name.type.struct.hlsl
//^^ -entity.name.type.struct.hlsl
//               ^ -entity.name.type.struct.hlsl

  typedef struct
//^^^^^^^ keyword.control.hlsl
//       ^^^^^^^ -keyword.control.hlsl
//        ^^^^^^ storage.type.struct.hlsl
//^^^^^^^^ -storage.type.struct.hlsl
  {
    float4 varname;
//  ^^^^^^ storage.type.vector.hlsl
//        ^^^^^^^^^ -storage.type.vector.hlsl
  } s_struct_name,
//^ meta.struct.hlsl
// ^ -meta.struct.hlsl
//  ^^^^^^^^^^^^^ entity.name.type.struct.hlsl
//^^ -entity.name.type.struct.hlsl
//               ^ -entity.name.type.struct.hlsl
    s_struct_name_2,
//  ^^^^^^^^^^^^^^^ entity.name.type.struct.hlsl
//^^ -entity.name.type.struct.hlsl
//                 ^ -entity.name.type.struct.hlsl
    s_struct_name_3;
//  ^^^^^^^^^^^^^^^ entity.name.type.struct.hlsl
//^^ -entity.name.type.struct.hlsl
//                 ^ -entity.name.type.struct.hlsl
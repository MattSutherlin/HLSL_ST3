// SYNTAX TEST "HLSL.sublime-syntax"


  #define TOKEN float3(0.0f, 1.0f, 1.0f)
//^^^^^^^ keyword.control.preprocessor.hlsl
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -keyword.control.preprocessor.hlsl
//        ^^^^^ constant.other.hlsl
//^^^^^^^^ -constant.other.hlsl
//             ^^^^^^^^^^^^^^^^^^^^^^^^^ -constant.other.hlsl
//              ^^^^^^ storage.type.vector.hlsl
//^^^^^^^^^^^^^^ -storage.type.vector.hlsl
//                    ^^^^^^^^^^^^^^^^^^ -storage.type.vector.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.hlsl

//^ -meta.preprocessor.hlsl

  #define TOKEN 8
//^^^^^^^ keyword.control.preprocessor.hlsl
//       ^^^^^^ -keyword.control.preprocessor.hlsl
//        ^^^^^ constant.other.hlsl
//^^^^^^^^ -constant.other.hlsl
//              ^ constant.numeric.hlsl
//^^^^^^^^^^^^^^^ meta.preprocessor.hlsl

//^ -meta.preprocessor.hlsl

  #define TOKEN
//^^^^^^^ keyword.control.preprocessor.hlsl
//       ^^^^^^ -keyword.control.preprocessor.hlsl
//        ^^^^^ constant.other.hlsl
//^^^^^^^^ -constant.other.hlsl
//^^^^^^^^^^^^^ meta.preprocessor.hlsl

//^ -meta.preprocessor.hlsl

  #define TOKEN \
//^^^^^^^ keyword.control.preprocessor.hlsl
//       ^^^^^^ -keyword.control.preprocessor.hlsl
//        ^^^^^ constant.other.hlsl
//^^^^^^^^ -constant.other.hlsl
    float3(0.0f, 1.0f, 0.0f)
//  ^^^^^^ storage.type.vector.hlsl
//^^ -storage.type.vector.hlsl
//        ^^^^^^^^^^^^^^^^^^ -storage.type.vector.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.hlsl

//^ -meta.preprocessor.hlsl

  #if defined(TOKEN)
//^^^ keyword.control.preprocessor.hlsl
//    ^^^^^^^ keyword.control.preprocessor.hlsl
//   ^ -keyword.control.preprocessor.hlsl
//           ^^^^^^^ -keyword.control.preprocessor.hlsl
//            ^^^^^ constant.other.hlsl
//^^^^^^^^^^^^ -constant.other.hlsl
//                 ^ -constant.other.hlsl
    #define TOKEN float3(0.0f, 1.0f, 1.0f)
//  ^^^^^^^ keyword.control.preprocessor.hlsl
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -keyword.control.preprocessor.hlsl
//          ^^^^^ constant.other.hlsl
//  ^^^^^^^^ -constant.other.hlsl
//               ^^^^^^^^^^^^^^^^^^^^^^^^^ -constant.other.hlsl
//                ^^^^^^ storage.type.vector.hlsl
//  ^^^^^^^^^^^^^^ -storage.type.vector.hlsl
//                      ^^^^^^^^^^^^^^^^^^ -storage.type.vector.hlsl

//^ -meta.preprocessor.hlsl
  #endif
//^^^^^^ keyword.control.preprocessor.hlsl

  #ifdef TOKEN
//^^^^^^ keyword.control.preprocessor.hlsl
//      ^^^^^^ -keyword.control.preprocessor.hlsl
//       ^^^^^ constant.other.hlsl
//^^^^^^^ -constant.other.hlsl
//                 ^ -constant.other.hlsl
    #define TOKEN float3(0.0f, 1.0f, 1.0f)
//  ^^^^^^^ keyword.control.preprocessor.hlsl
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -keyword.control.preprocessor.hlsl
//          ^^^^^ constant.other.hlsl
//  ^^^^^^^^ -constant.other.hlsl
//               ^^^^^^^^^^^^^^^^^^^^^^^^^ -constant.other.hlsl
//                ^^^^^^ storage.type.vector.hlsl
//  ^^^^^^^^^^^^^^ -storage.type.vector.hlsl
//                      ^^^^^^^^^^^^^^^^^^ -storage.type.vector.hlsl

//^ -meta.preprocessor.hlsl
  #endif
//^^^^^^ keyword.control.preprocessor.hlsl

  #ifndef TOKEN
//^^^^^^^ keyword.control.preprocessor.hlsl
//       ^^^^^^ -keyword.control.preprocessor.hlsl
//        ^^^^^ constant.other.hlsl
//^^^^^^^^ -constant.other.hlsl
//                 ^ -constant.other.hlsl
    #define TOKEN float3(0.0f, 1.0f, 1.0f)
//  ^^^^^^^ keyword.control.preprocessor.hlsl
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -keyword.control.preprocessor.hlsl
//          ^^^^^ constant.other.hlsl
//  ^^^^^^^^ -constant.other.hlsl
//               ^^^^^^^^^^^^^^^^^^^^^^^^^ -constant.other.hlsl
//                ^^^^^^ storage.type.vector.hlsl
//  ^^^^^^^^^^^^^^ -storage.type.vector.hlsl
//                      ^^^^^^^^^^^^^^^^^^ -storage.type.vector.hlsl

//^ -meta.preprocessor.hlsl
  #endif
//^^^^^^ keyword.control.preprocessor.hlsl
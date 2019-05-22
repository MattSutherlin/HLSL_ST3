// SYNTAX TEST "HLSL.sublime-syntax"


{
  #define TOKEN float3(0.0f, 1.0f, 1.0f)
//^^^^^^^ keyword.control.preprocessor.hlsl
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -keyword.control.preprocessor.hlsl
//        ^^^^^ constant.other.hlsl
//^^^^^^^^ -constant.other.hlsl
//             ^^^^^^^^^^^^^^^^^^^^^^^^^ -constant.other.hlsl
//              ^^^^^^ storage.type.vector.hlsl
//^^^^^^^^^^^^^^ -storage.type.vector.hlsl
//                    ^^^^^^^^^^^^^^^^^^ -storage.type.vector.hlsl

  #define TOKEN
//^^^^^^^ keyword.control.preprocessor.hlsl
//       ^^^^^^ -keyword.control.preprocessor.hlsl
//        ^^^^^ constant.other.hlsl
//^^^^^^^^ -constant.other.hlsl

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
  #endif
//^^^^^^ keyword.control.preprocessor.hlsl
}
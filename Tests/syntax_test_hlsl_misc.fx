// SYNTAX TEST "HLSL.sublime-syntax"


// Comments

  // Comment!
//^^^^^^^^^^^ comment.line.double-slash.hlsl

  // "Comment!"
//^^^^^^^^^^^^^ comment.line.double-slash.hlsl

  /* Comment! */
//^^^^^^^^^^^^^^ comment.block.hlsl

  /* Comment!
//^^^^^^^^^^^ comment.block.hlsl
  More Comment!
//^^^^^^^^^^^^^ comment.block.hlsl
  Another line of comment! */
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.hlsl


// Includes

  #include "file.fxh"
//^^^^^^^^^^^^^^^^^^^ meta.preprocessor.include.hlsl
//^^^^^^^^ keyword.control.preprocessor.include.hlsl
//        ^^^^^^^^^^^ -keyword.control.preprocessor.include.hlsl
//         ^ punctuation.definition.string.begin.hlsl
//          ^^^^^^^^ string.quoted.double.include.hlsl
//                  ^ punctuation.definition.string.end.hlsl
  #include <file.fxh>
//^^^^^^^^^^^^^^^^^^^ meta.preprocessor.include.hlsl
//^^^^^^^^ keyword.control.preprocessor.include.hlsl
//        ^^^^^^^^^^^ -keyword.control.preprocessor.include.hlsl
//         ^ punctuation.definition.string.begin.hlsl
//          ^^^^^^^^ string.quoted.other.lt-gt.include.hlsl
//                  ^ punctuation.definition.string.end.hlsl


// Cbuffer

  cbuffer BufferName : register(b0)
//^^^^^^^ storage.type.buffer.hlsl
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.buffer.hlsl
//                     ^^^^^^^^ keyword.register.hlsl
//^^^^^^^^^^^^^^^^^^^^^ -keyword.register.hlsl
//                             ^^^^ - keyword.register.hlsl
  {
    matrix MatrixVar;
//  ^^^^^^ storage.type.matrix.hlsl
    float4 Float4Var;
//  ^^^^^^ storage.type.vector.hlsl
  }


// Swizzling

  float3 var1;
  float4 var2 = var1.xrgz;
//                  ^^^^^ - variable.other.dot-access.hlsl
  float4 var3 = var1.rrrg;
//                  ^^^^^ variable.other.dot-access.hlsl
  float4 var4 = var1.xrgg;
//                  ^^^^^ - variable.other.dot-access.hlsl
  float4 var5 = var1.xxrg.g.ggz;
//                  ^^^^^ - variable.other.dot-access.hlsl
//                       ^^ variable.other.dot-access.hlsl
//                         ^^^^ - variable.other.dot-access.hlsl
  float4 var6 = var1.rrxy.y.yyb;
//                  ^^^^^ - variable.other.dot-access.hlsl
//                       ^^ variable.other.dot-access.hlsl
//                         ^^^^ - variable.other.dot-access.hlsl
  float4 var7 = var1.xxyz.g.bb;
//                  ^^^^^^^^^^ variable.other.dot-access.hlsl


// Macros

  #define NAMESPACE_START(name) namespace name {
//        ^^^^^^^^^^^^^^^ entity.name.function.hlsl
//^^^^^^^^ -entity.name.function.hlsl
//                       ^^^^^^^^^^^^^^^^^^^^^^^ -entity.name.function.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                             ^^^^^^^^^^^^^^^^^ -meta.function.parameters.hlsl
//                        ^^^^^ meta.function.parameters.hlsl
//                             ^^^^^^^^^^^^^^^^^ meta.function.hlsl

//^ -meta.function.hlsl

  #define NAMESPACE_END }
//^^^^^^^ keyword.control.preprocessor.hlsl
//       ^^^^^^^^^^^^^^ -keyword.control.preprocessor.hlsl
//        ^^^^^^^^^^^^^ constant.other.hlsl
//^^^^^^^^ -constant.other.hlsl
//                     ^^ -constant.other.hlsl
//^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.hlsl

//^ -meta.preprocessor.hlsl


// Everything below here should be removed at some point
// I believe it is (or should be) redundant with tests in other files

typedef struct
//      ^ storage.type.struct.hlsl
{
    #if defined(TOKEN)
//              ^ constant.other.hlsl
        float3 varname3 : POSITION0;
    #endif

    float4 varname;
//  ^ storage.type.vector.hlsl
    int4 varname2 : TEXCOORD0;
}   s_struct_name,
//  ^ entity.name.type.struct.hlsl
    s_struct_name_2;
//  ^ entity.name.type.struct.hlsl

namespace TestSpace
// <- keyword.control.namespace.hlsl
//        ^ storage.type.namespace.hlsl
{
    typedef struct
//  ^ keyword.control.hlsl
//          ^ storage.type.struct.hlsl
    {
        float4 varname;

        float4 varname;

        #if defined(TOKEN)
//      ^ keyword.control.preprocessor.hlsl
//          ^ keyword.control.preprocessor.hlsl
//                  ^ constant.other.hlsl
            int4 varname2;
        #endif

        varname FunctionName(float param1, int2 param2, inout structName param3, uniform bool IsTrue = false)
//      ^ storage.type.hlsl
//              ^ entity.name.function.hlsl
//                           ^ storage.type.scalar.hlsl
//                                         ^ storage.type.vector.hlsl
//                                                      ^ variable.other.copy-modifier.hlsl
//                                                                               ^ storage.modifier.hlsl
//                                                                                       ^ storage.type.scalar.hlsl
//                                                                                                     ^ constant.language.hlsl
        {
            return result;
        }
    } s_struct_name;
//    ^ entity.name.type.struct.hlsl
}
// SYNTAX TEST "HLSL.sublime-syntax"


{
  // Comment!
//^^^^^^^^^^^ comment.line.double-slash.hlsl

  // "Comment!"
//^^^^^^^^^^^^^ comment.line.double-slash.hlsl

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
}

cbuffer BufferName : register(b0)
//^ storage.type.buffer.hlsl
//                   ^ keyword.register.hlsl
{
  matrix MatrixVar;
//^ storage.type.matrix.hlsl
  float4 Float4Var;
}

struct PS_INPUT
{
  float4 Var                : SV_POSITION;
  noperspective float2 Var2 : TEXCOORD0;
  centroid float4 ScreenTex : TEXCOORD1;
};

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
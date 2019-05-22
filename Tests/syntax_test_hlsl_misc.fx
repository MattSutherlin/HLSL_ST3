// SYNTAX TEST "HLSL.sublime-syntax"

// Comment!
//^^^^^^^^^ comment.line.double-slash.hlsl

// "Comment!"
//^^^^^^^^^^^ comment.line.double-slash.hlsl

return float(5.0);
// <- keyword.control.hlsl
//     ^ storage.type.scalar.hlsl

#define TOKEN float3(0.0f, 1.0f, 1.0f)
// <- keyword.control.preprocessor.hlsl
//            ^ storage.type.vector.hlsl

#if defined(TOKEN)
    #define TOKEN float3(0.0f, 1.0f, 1.0f)
//  ^ keyword.control.preprocessor.hlsl
//                ^ storage.type.vector.hlsl
#endif

#ifdef TOKEN
    #define TOKEN float3(0.0f, 1.0f, 1.0f)
//  ^ keyword.control.preprocessor.hlsl
//                ^ storage.type.vector.hlsl
#endif

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

#define TOKEN
//      ^ constant.other.hlsl

#if defined(TOKEN)
// <- keyword.control.preprocessor.hlsl
//  ^ keyword.control.preprocessor.hlsl
//          ^ constant.other.hlsl
    float3 varname3 : POSITION0;
#endif

#ifdef TOKEN
//     ^ constant.other.hlsl
#endif

struct varname
// <- storage.type.struct.hlsl
//     ^ entity.name.type.struct.hlsl
{
    #if defined(TOKEN)
//              ^ constant.other.hlsl
        float3 varname3 : POSITION0;
    #endif

    float varname;
    int varname;
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
    struct TestStruct
//  ^ storage.type.struct.hlsl
//         ^ entity.name.type.struct.hlsl
    {
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
    };

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

    float FunctionName(float param1, int2 param2, structName param3)
//  ^ storage.type.scalar.hlsl
//        ^ entity.name.function.hlsl
    {
        return 5.0f;
//      ^ keyword.control.hlsl
//             ^ constant.numeric.hlsl
    }
}
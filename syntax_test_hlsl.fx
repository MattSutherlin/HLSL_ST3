// SYNTAX TEST "HLSL.sublime-syntax"

// Comment!
//^^^^^^^^^ comment.line.double-slash.hlsl

// "Comment!"
//^^^^^^^^^^^ comment.line.double-slash.hlsl

float varname;
// <- storage.type.scalar.hlsl

float2 varname;
// <- storage.type.vector.hlsl

float2x2 varname;
// <- storage.type.matrix.hlsl

float varname = float(5.0);
//              ^ storage.type.scalar.hlsl
float2 varname = float2(5.0, 5.0);
//               ^ storage.type.vector.hlsl

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

#define MACRO_FUNCTION(paramName, paramValue) float paramName = paramValue;
//      ^ entity.name.function.hlsl

struct varname
// <- storage.type.struct.hlsl
//     ^ entity.name.type.struct.hlsl
{
    float varname;
    int varname;
};

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
    float4 varname;
//  ^ storage.type.vector.hlsl
    int4 varname2 : TEXCOORD0;
} s_struct_name;
// ^ entity.name.type.struct.hlsl

typedef struct
//      ^ storage.type.struct.hlsl
{
    float4 varname;
//  ^ storage.type.vector.hlsl
    int4 varname2 : TEXCOORD0;
}   s_struct_name,
//  ^ entity.name.type.struct.hlsl
    s_struct_name_2,
//  ^ entity.name.type.struct.hlsl
    s_struct_name_3;
//  ^ entity.name.type.struct.hlsl

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

Texture1D varname;
// <- storage.type.texture.hlsl

Texture1DArray varname;
// <- storage.type.texture.hlsl

float FunctionName(float param1, int2 param2, structName param3)
// <- storage.type.scalar.hlsl
//    ^ entity.name.function.hlsl
{
    return result;
}

float2 FunctionName(float param1, int2 param2, structName param3)
// <- storage.type.vector.hlsl
//     ^ entity.name.function.hlsl
{
    return result;
}

float2x2 FunctionName(float param1, int2 param2, structName param3)
// <- storage.type.matrix.hlsl
//       ^ entity.name.function.hlsl
{
    return result;
}

varname FunctionName(float param1, int2 param2, inout structName param3, uniform bool IsTrue = false)
// <- storage.type.hlsl
//      ^ entity.name.function.hlsl
{
    return result;
}

float result = FunctionName(param1, param2, param3);
// <- storage.type.scalar.hlsl
//           ^ keyword.operator.hlsl
//             ^ variable.function.hlsl

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


// Test all combinations of texture dimensions and modifiers

Texture1D
// <- storage.type.texture.hlsl
RWTexture1D
// <- storage.type.texture.hlsl
Texture1DArray
// <- storage.type.texture.hlsl
RWTexture1DArray
// <- storage.type.texture.hlsl
Texture1DMS
// <- -storage.type.texture.hlsl
RWTexture1DMS
// <- -storage.type.texture.hlsl
Texture1DMSArray
// <- -storage.type.texture.hlsl
RWTexture1DMSArray
// <- -storage.type.texture.hlsl
Texture2D
// <- storage.type.texture.hlsl
RWTexture2D
// <- storage.type.texture.hlsl
Texture2DArray
// <- storage.type.texture.hlsl
RWTexture2DArray
// <- storage.type.texture.hlsl
Texture2DMS
// <- storage.type.texture.hlsl
RWTexture2DMS
// <- -storage.type.texture.hlsl
Texture2DMSArray
// <- storage.type.texture.hlsl
RWTexture2DMSArray
// <- -storage.type.texture.hlsl
Texture3D
// <- storage.type.texture.hlsl
RWTexture3D
// <- storage.type.texture.hlsl
Texture3DArray
// <- -storage.type.texture.hlsl
RWTexture3DArray
// <- -storage.type.texture.hlsl
Texture3DMS
// <- -storage.type.texture.hlsl
RWTexture3DMS
// <- -storage.type.texture.hlsl
Texture3DMSArray
// <- -storage.type.texture.hlsl
RWTexture3DMSArray
// <- -storage.type.texture.hlsl
TextureCube
// <- storage.type.texture.hlsl
RWTextureCube
// <- -storage.type.texture.hlsl
TextureCubeArray
// <- storage.type.texture.hlsl
RWTextureCubeArray
// <- -storage.type.texture.hlsl
TextureCubeMS
// <- -storage.type.texture.hlsl
RWTextureCubeMS
// <- -storage.type.texture.hlsl
TextureCubeMSArray
// <- -storage.type.texture.hlsl
RWTextureCubeMSArray
// <- -storage.type.texture.hlsl


// Test numeric types

    0
//  ^ constant.numeric.hlsl
    0f
//  ^ -constant.numeric.hlsl
    0H
//  ^ -constant.numeric.hlsl
    0.0
//  ^^^ constant.numeric.hlsl
    0.f
//  ^^^ constant.numeric.hlsl
    0.0F
//  ^^^^ constant.numeric.hlsl
    .0f
//  ^^^ constant.numeric.hlsl
    .0h
//  ^^^ constant.numeric.hlsl
    .f
//  ^^ -constant.numeric.hlsl
    0x0
//  ^^^ constant.numeric.hlsl
    0X0F
//  ^^^^ constant.numeric.hlsl
    0x0u
//  ^^^^ constant.numeric.hlsl
    1.5e+01
//  ^^^^^^^ constant.numeric.hlsl
    1.5E-05
//  ^^^^^^^ constant.numeric.hlsl
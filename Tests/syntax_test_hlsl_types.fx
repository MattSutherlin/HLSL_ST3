// SYNTAX TEST "HLSL.sublime-syntax"


// Scalar types

float varname;
// <- storage.type.scalar.hlsl
float varname = float(5.0);
//              ^^^^^ storage.type.scalar.hlsl
//   ^^^^^^^^^^^ -storage.type.scalar.hlsl
//                   ^^^^^^ -storage.type.scalar.hlsl


// Vector types

float2 varname;
// <- storage.type.vector.hlsl
float2 varname = float2(5.0, 5.0);
//               ^^^^^^ storage.type.vector.hlsl
//    ^^^^^^^^^^^ -storage.type.vector.hlsl
//                     ^^^^^^^^^^^ -storage.type.vector.hlsl


// Matrix types

float2x2 varname;
// <- storage.type.matrix.hlsl



// Texture types

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
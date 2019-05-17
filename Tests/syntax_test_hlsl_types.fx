// SYNTAX TEST "HLSL.sublime-syntax"


// Scalar types

{
  float varname;
//^^^^^ storage.type.scalar.hlsl
//     ^^^^^^^^^ -storage.type.scalar.hlsl
  float varname = 1.0f;
//^^^^^ storage.type.scalar.hlsl
//     ^^^^^^^^^^^^^^^^ -storage.type.scalar.hlsl
  float varname = float(5.0);
//^^^^^ storage.type.scalar.hlsl
//                ^^^^^ storage.type.scalar.hlsl
//     ^^^^^^^^^^^ -storage.type.scalar.hlsl
//                     ^^^^^^ -storage.type.scalar.hlsl
}


// Vector types

{
  float2 varname;
//^^^^^^ storage.type.vector.hlsl
  float2 varname = { 5.0, 5.0 };
//^^^^^^ storage.type.vector.hlsl
//      ^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.vector.hlsl
  float2 varname = float2(5.0, 5.0);
//^^^^^^ storage.type.vector.hlsl
//                 ^^^^^^ storage.type.vector.hlsl
//      ^^^^^^^^^^^ -storage.type.vector.hlsl
//                       ^^^^^^^^^^^ -storage.type.vector.hlsl
}


// Matrix types

{
  float2x2 varname;
//^^^^^^^^ storage.type.matrix.hlsl
//        ^^^^^^^^^ -storage.type.matrix.hlsl
  float2x2 varname = { 5.0, 5.0, 5.0, 5.0 };
//^^^^^^^^ storage.type.matrix.hlsl
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -storage.type.matrix.hlsl
}



// Texture types

{
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
}
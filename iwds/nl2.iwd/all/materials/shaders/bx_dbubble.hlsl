#include "lib/globals.hlsl"
#include "lib/transform.hlsl"

// Define samplers
sampler2D bx_dbubble : register(s0);
sampler2D bolt : register(s1);
sampler2D overscroll2 : register(s2);

// Define constants
float4x4 matViewProjection;

// Define structures
struct VertexInput
{
    float4 position : POSITION;
    float3 texCoords : TEXCOORD0;
};

struct PixelInput
{
    float4 position : POSITION;
    float3 texCoords : TEXCOORD0;
};

struct PixelOutput
{
    float4 color : COLOR;
};

// Vertex Shader
PixelInput vs_main(const VertexInput vertex) {
    PixelInput pixel;
    pixel.position = mul(vertex.position, matViewProjection);
    pixel.texCoords = vertex.texCoords;
    return pixel;
}

// Pixel Shader
PixelOutput ps_main(const PixelInput pixel) : COLOR {
    PixelOutput fragment;
    float2 boltCoords = pixel.texCoords;
    boltCoords = boltCoords * float2(1, 1); // tcmod scroll 1 1
    boltCoords = boltCoords + float2(0, 0); // tcmod rotate 10
    float4 boltColor = tex2D(bolt, boltCoords);
    
    float2 overscroll2Coords = pixel.texCoords;
    overscroll2Coords = overscroll2Coords * float2(0.4, 0.4); // tcmod scroll 0.4 0.4
    float4 overscroll2Color = tex2D(overscroll2, overscroll2Coords);
    
    float4 finalColor = lerp(boltColor, overscroll2Color, overscroll2Color.a);
    fragment.color = finalColor;
    return fragment;
}

// Define samplers
sampler2D bx_dbubble : register(s0);
sampler2D bolt : register(s1);
sampler2D overscroll2 : register(s2);

// Define constants
float4x4 matViewProjection;

// Define vertex shader input structure
struct VS_INPUT {
    float4 Position : POSITION;
    float2 TexCoord : TEXCOORD0;
};

// Define vertex shader output structure
struct VS_OUTPUT {
    float4 Position : POSITION;
    float2 TexCoord : TEXCOORD0;
};

// Vertex Shader
VS_OUTPUT VS_Main(VS_INPUT input) {
    VS_OUTPUT output;

    output.Position = mul(input.Position, matViewProjection);
    output.TexCoord = input.TexCoord;

    return output;
}

// Pixel Shader
float4 PS_Main(VS_OUTPUT input) : COLOR {
    float2 boltCoords = input.TexCoord;
    boltCoords = boltCoords * float2(1, 1); // tcmod scroll 1 1
    boltCoords = boltCoords + float2(0, 0); // tcmod rotate 10

    float4 boltColor = tex2D(bolt, boltCoords);
    
    float2 overscroll2Coords = input.TexCoord;
    overscroll2Coords = overscroll2Coords * float2(0.4, 0.4); // tcmod scroll 0.4 0.4

    float4 overscroll2Color = tex2D(overscroll2, overscroll2Coords);
    
    float4 finalColor = lerp(boltColor, overscroll2Color, overscroll2Color.a);

    return finalColor;
}

// Technique
technique Technique1 {
    pass Pass1 {
        VertexShader = compile vs_2_0 VS_Main();
        PixelShader = compile ps_2_0 PS_Main();
    }
}

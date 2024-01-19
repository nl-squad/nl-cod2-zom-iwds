// Zmienna przechowująca teksturę
Texture2D skinTexture;

// Zmienna przechowująca interpolowaną pozycję tekstury
SamplerState sampler : register(s0);

// Struktura reprezentująca dane wejściowe do pixel shadera
struct PixelInput
{
    float2 uv : TEXCOORD0; // Współrzędne tekstury
};

// Struktura reprezentująca dane wyjściowe z pixel shadera
struct PixelOutput
{
    float4 color : SV_TARGET; // Kolor wyjściowy
};

// Funkcja pixel shadera
PixelOutput main(PixelInput input) : COLOR
{
    PixelOutput output;

    // Odczytaj kolor z tekstury na podstawie współrzędnych tekstury
    float4 textureColor = skinTexture.Sample(sampler, input.uv);

    // Funkcja tcmod scroll 0 -1
    input.uv.y -= 1.0 * _Time.y;

    // Efekt rgbGen lightingDiffuse
    float3 diffuseLighting = float3(0.7, 0, 0.9);

    // Efekt rgbgen constLighting (0.7 0 0.9)
    textureColor.rgb *= diffuseLighting;

    // Efekt alphaGen const .5
    textureColor.a *= 0.5;

    // Efekt blendfunc blend
    output.color = textureColor;

    return output;
}

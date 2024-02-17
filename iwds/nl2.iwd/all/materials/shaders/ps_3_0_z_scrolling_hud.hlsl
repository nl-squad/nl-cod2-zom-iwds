#define PC
#define IS_VERTEX_SHADER 0
#define IS_PIXEL_SHADER 1
#include <shader_vars.h>

struct PixelShaderInput				                // this is the output struct from our vertex shader 
{
    float4 position : POSITION;
	float2 texCoord : TEXCOORD0;
};

float4 ps_main(PixelShaderInput input) : COLOR 		// as the pixelshader is only outputting a color, we link it to the semantic COLOR
{
	float4 output;	

	// horizontal scroll 							// this modifys out horizontal texcoord so we get a scrolling texture
	float newX = input.texCoord.x + gameTime.w;		// here we add gameTime.w to our X Texcoord
													// gameTime.w increases linearly forever, and appears to be measured in seconds.
													// ( now we get horizontal texcoords(x) above the 0-1 range 						)
													// ( if you would have set "tile both" to "tile none" for your image in AssMan 		)
													// ( the image would only draw as long as the texcoords are in range 0-1			)
													// ( anything above that would just be clipped of, thats how tiling textures work	)


	// tex2D samples our texture with the given texture coordinates (UV´s) and returns a colored pixel -> float4 color ( x,y,z,w or r,g,b,a )
	    // function float4 tex2D() : tex2D( sampler, float2 texcoords )

	// instead of input.texCoord (xy), we use our manipulated x texcoord with the original y texcoord: 
	output = tex2D(colorMapSampler, float2( newX, input.texCoord.y ) );	 // A ")" was missing here causing compile errors. Thanks to Sheep Wizard for pointing that our!	
	
	// if you want a fixed alpha channel ( incase your texture doens´t have one ) with half the transparency we could do:
		// output = float4( tex2D(colorMapSampler, float2( newX ,input.texCoord.y ) ).rgb, 0.5 );

	// or we manipulate the alpha afterwards by doing:
		// output = tex2D(colorMapSampler, float2( newX ,input.texCoord.y ) );
		// output.w = 0.5;

	// return a float4 "output" As COLOR
	return output;
}
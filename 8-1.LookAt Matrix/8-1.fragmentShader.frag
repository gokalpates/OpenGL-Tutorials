#version 330 core

in vec3 color;
in vec2 outTextureCoordinates;

out vec4 fragColor;

uniform sampler2D ourTexture;
uniform sampler2D ourTexture2;

void main()
{
	fragColor = mix(texture(ourTexture,outTextureCoordinates),texture(ourTexture2,outTextureCoordinates),0.2f);
}
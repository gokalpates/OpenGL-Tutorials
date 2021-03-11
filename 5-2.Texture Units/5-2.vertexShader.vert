#version 330 core

layout(location = 0) in vec3 vertexPos;
layout(location = 1) in vec3 vertexColor;
layout(location = 2) in vec2 textureCoordinates;

out vec3 color;
out vec2 outTextureCoordinates;

void main()
{
	gl_Position = vec4(vertexPos,1.0f);
	color = vertexColor;
	outTextureCoordinates = textureCoordinates;
}
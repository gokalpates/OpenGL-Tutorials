#version 330 core

layout(location = 0) in vec3 vertexPos;
layout(location = 1) in vec3 vertexColor;
layout(location = 2) in vec2 textureCoordinates;

out vec3 color;
out vec2 outTextureCoordinates;

// Uniform matrix for translating vertices.
uniform mat4 transform;

void main()
{
	gl_Position = transform * vec4(vertexPos,1.0f);
	color = vertexColor;
	outTextureCoordinates = textureCoordinates;
}
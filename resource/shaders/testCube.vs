#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

uniform mat4 mvp;
out vec4 ourColor;
out vec2 TexCoord;

void main()
{
    gl_Position = mvp * vec4(aPos, 1.0);
	ourColor = vec4(aColor, 1.0);
	TexCoord = aTexCoord;
}

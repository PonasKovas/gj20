shader_type canvas_item;
render_mode unshaded;

uniform float intensity : hint_range(0.0, 1.0) = 1.0;
 
void fragment()
{
	float in_intensity = 1.0-intensity;
	vec4 white = vec4(1.0, 1.0, 1.0, 1.0);
	vec4 pixel_color = texture(TEXTURE, UV);
	if (pixel_color.a != 0.0) {
		pixel_color.r = pixel_color.r*in_intensity + white.r*intensity;
		pixel_color.g = pixel_color.g*in_intensity + white.g*intensity;
		pixel_color.b = pixel_color.b*in_intensity + white.b*intensity;
		pixel_color.a = pixel_color.a*in_intensity + white.a*intensity;
	}
	COLOR = pixel_color;
}
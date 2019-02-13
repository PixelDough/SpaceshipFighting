/// @description GOT STATE

image_xscale += 0.1;
image_yscale += 0.1;
image_alpha -= 0.05;

if image_alpha < 0 {
	instance_destroy();
}

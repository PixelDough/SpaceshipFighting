vx = approach(vx, 0, 0.1);
vy = approach(vy, 0, 0.1);

image_xscale -= 0.025;
image_yscale -= 0.025;

image_alpha -= 0.033;

if (image_alpha <= 0)
    instance_destroy();


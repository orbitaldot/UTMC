image_angle += (sign(vel[0]) * 5)
image_alpha -= 0.1
if (image_alpha <= 0)
    instance_destroy()
x += vel[0]
y += vel[1]

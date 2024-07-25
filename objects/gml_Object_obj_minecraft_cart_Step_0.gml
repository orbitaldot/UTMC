var v1, v2, next_block;
scr_depth()
if (myinteract == 1)
{
    obj_minecraft_controller.minecart = id
    myinteract = 3
    global.interact = 1
    global.msc = 4100
    global.typer = 5
    global.insta_write = 1
    obj_minecraft_controller.minecart = id
    mydialoguer = instance_create(x, y, obj_dialoguer)
    global.insta_write = 0
}
on_block = scr_minecraft_getBlock(x, (y - 1))
moving = false
if (myinteract == 3 && (!instance_exists(obj_dialoguer)))
{
    global.interact = 0
    myinteract = 0
}
if riding
{
    if (dir == 1)
    {
        if keyboard_check(vk_up)
        {
            vel[1] = max((vel[1] - 0.1), -6)
            moving = true
        }
        if keyboard_check(vk_down)
        {
            vel[1] = min((vel[1] + 0.1), 6)
            moving = true
        }
    }
    if (dir == 0)
    {
        if keyboard_check(vk_left)
        {
            vel[0] = max((vel[0] - 0.1), -6)
            moving = true
        }
        if keyboard_check(vk_right)
        {
            vel[0] = min((vel[0] + 0.1), 6)
            moving = true
        }
    }
}
if (!moving)
{
    vel[0] = lerp(vel[0], 0, 0.003)
    vel[1] = lerp(vel[1], 0, 0.003)
}
next_block = scr_minecraft_getBlock((x + (sign(vel[0]) * 10)), (y + (5 * sign(vel[1]))))
if (on_block < 200 || next_block < 200)
{
    vel[0] = 0
    vel[1] = 0
}
front = scr_minecraft_getBlock((x + (20 * sign(vel[0]))), ((y - 2) + (20 * sign(vel[1]))))
x += vel[0]
y += vel[1]
if (old_on_block != on_block)
    changing_dir = 0
if (on_block == 202 || on_block == 205)
{
    if (!changing_dir)
    {
        v1 = vel[0]
        v2 = vel[1]
        vel[0] = v2
        vel[1] = v1
        olvx = vel[0]
        olvy = vel[1]
        changing_dir = 1
        dir = (!dir)
        x = ((floor((x / 20)) * 20) + 10)
        y = ((floor((y / 20)) * 20) + 16)
    }
}
if (on_block == 203 || on_block == 204)
{
    if (!changing_dir)
    {
        v1 = vel[0]
        v2 = vel[1]
        vel[0] = (-v2)
        vel[1] = (-v1)
        olvx = vel[0]
        olvy = vel[1]
        changing_dir = 1
        dir = (!dir)
        x = ((floor((x / 20)) * 20) + 10)
        y = ((floor((y / 20)) * 20) + 16)
    }
}
if (abs(vel[0]) > 0 && sign(vel[0]) != sign(olvx) && changing_dir)
    changing_dir = 0
if (abs(vel[1]) > 0 && sign(vel[1]) != sign(olvy) && changing_dir)
    changing_dir = 0
if riding
{
    obj_mainchara.x = (x - 10)
    obj_mainchara.y = (y - 30)
    if control_check_pressed(1)
    {
        riding = 0
        global.interact = 0
    }
}
oly = (floor((y / 20)) * 20)
olx = (floor((x / 20)) * 20)
olvx = vel[0]
olvy = vel[1]
old_on_block = on_block

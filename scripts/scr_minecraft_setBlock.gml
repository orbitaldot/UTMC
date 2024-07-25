var xx, yy, block, ch, ix, iy;
xx = argument0
yy = argument1
block = argument2
ch = instance_position((floor((xx / 320)) * 320), (floor((yy / 240)) * 240), obj_minecraft_chunk)
if (ch != noone)
{
    ix = floor(((xx - ch.x) / 20))
    iy = floor(((yy - ch.y) / 20))
    ch.CHUNKDATA[iy, ix] = block
}

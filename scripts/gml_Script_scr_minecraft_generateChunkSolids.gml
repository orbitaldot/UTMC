var parent, chunkdat, chunkx, chunky, solids, w, h, yy, chunk_line, xx, block;
parent = argument0
chunkx = argument2
chunky = argument3
w = 16
h = 12
for (yy = 0; yy < h; yy++)
{
    for (xx = 0; xx < w; xx++)
    {
        if (parent.CHUNKDATA[yy, xx] > 0)
        {
            block = instance_create(((320 * chunkx) + (xx * 20)), ((240 * chunky) + (yy * 20)), obj_minecraft_block)
            block.CHUNK = parent
            block.inchunk_x = xx
            block.inchunk_y = yy
        }
    }
}

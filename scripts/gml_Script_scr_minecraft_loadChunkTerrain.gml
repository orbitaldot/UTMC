var chunk, chunkx, chunky, filename, file, xx, yy, block, w, h, chunk_line, chunktemp, deepslate_chance;
chunk = argument0
chunkx = argument1
chunky = argument2
chunk.CHUNKDATA[11, 15] = 0
filename = (((("minecraft/CHUNK_" + string(chunkx)) + "_") + string(chunky)) + ".dat")
if file_exists(filename)
{
    file = file_text_open_read(filename)
    for (yy = 0; yy < 12; yy++)
    {
        for (xx = 0; xx < 16; xx++)
        {
            block = file_text_read_real(file)
            file_text_readln(file)
            chunk.CHUNKDATA[yy, xx] = block
        }
    }
    file_text_close(file)
}
else
{
    w = 16
    h = 12
    deepslate_chance = ((sqrt((sqr(chunkx) + sqr(chunky))) / 3) - 1.5)
    for (yy = 0; yy < h; yy++)
    {
        for (xx = 0; xx < w; xx++)
        {
            chunk.CHUNKDATA[yy, xx] = 1
            if (random(2) < deepslate_chance)
                chunk.CHUNKDATA[yy, xx] = 6
            if (random(100) < 2)
                chunk.CHUNKDATA[yy, xx] = 3
            else if (random(100) < 6)
                chunk.CHUNKDATA[yy, xx] = 2
            if ((abs(chunkx) + abs(chunky)) >= 6)
            {
                if (random(100) < 3)
                    chunk.CHUNKDATA[yy, xx] = 4
            }
            if ((abs(chunkx) + abs(chunky)) >= 10)
            {
                if (random(300) < 2)
                    chunk.CHUNKDATA[yy, xx] = 5
            }
            if (chunkx == 0 && chunky == 0)
            {
                if (abs((xx - (w / 2))) < 5 && abs((yy - (h / 2))) < 4)
                    chunk.CHUNKDATA[yy, xx] = 0
            }
        }
    }
    scr_minecraft_genCave(chunk, chunk.CHUNKX, chunk.CHUNKY)
}
chunk.loaded = true
return chunk.CHUNKDATA;

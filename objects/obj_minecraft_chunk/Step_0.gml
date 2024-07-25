var disx, disy, chunk, unload_disx, unload_disy, i, ii;
if instance_exists(obj_mainchara)
{
    unload_disx = 640
    unload_disy = 480
    disx = abs(((x + 160) - obj_mainchara.x))
    disy = abs(((y + 120) - obj_mainchara.y))
    if (disx > unload_disx || disy > unload_disy)
    {
        scr_minecraft_saveChunk(CHUNKDATA, CHUNKX, CHUNKY)
        instance_destroy(id)
    }
    if (obj_mainchara.x > x && obj_mainchara.x < (x + 320) && obj_mainchara.y > y && obj_mainchara.y < (y + 240))
    {
        if (!active)
        {
            scr_minecraft_loadChunk((CHUNKX - 1), CHUNKY, 1)
            scr_minecraft_loadChunk((CHUNKX + 1), CHUNKY, 1)
            scr_minecraft_loadChunk((CHUNKX - 1), (CHUNKY - 1), 0)
            scr_minecraft_loadChunk((CHUNKX + 1), (CHUNKY - 1), 0)
            scr_minecraft_loadChunk((CHUNKX - 1), (CHUNKY + 1), 0)
            scr_minecraft_loadChunk((CHUNKX + 1), (CHUNKY + 1), 0)
            scr_minecraft_loadChunk(CHUNKX, (CHUNKY - 1), 1)
            scr_minecraft_loadChunk(CHUNKX, (CHUNKY + 1), 1)
        }
        active = true
    }
    else
        active = false
}
depth = 100000

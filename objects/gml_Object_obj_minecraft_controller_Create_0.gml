var w, h, yy, xx, i, ii, chunk, central_chunk;
w = 16
h = 12
for (i = -1; i < 2; i++)
{
    for (ii = -1; ii < 2; ii++)
    {
        scr_minecraft_loadChunk(i, ii, 1)
        central_chunk = instance_position(2, 2, obj_minecraft_chunk)
        if (central_chunk != noone)
            central_chunk.active = true
    }
}
nearlava = 0
nearcrystal = 0
lightalpha = 1
rail_placing_mode = 0
depth = 0
old_px = obj_mainchara.x
old_py = obj_mainchara.y
scr_musfadeout(0.5)
caster_loop(mus_patient, 1, 0.95)
old_ptilex = 0
old_ptiley = 0
oldold_ptiley = 0
oldold_ptiley = 0
minecart = -4
global.insta_write = 0
crystalpointer_alpha = 0

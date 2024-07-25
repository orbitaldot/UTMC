var i, ii, xx, yy, ch, data, ix, iy, block, ptilex, ptiley, rail_to_place, spark;
if (point_distance(obj_mainchara.x, obj_mainchara.y, old_px, old_py) > 20)
{
    nearlava = 0
    nearcrystal = 0
    instance_destroy(obj_minecraft_block)
    for (i = -3; i < 4; i++)
    {
        for (ii = -3; ii < 4; ii++)
        {
            xx = (obj_mainchara.x + (i * 20))
            yy = (obj_mainchara.y + (ii * 20))
            draw_set_color(c_red)
            ch = instance_place((floor((xx / 320)) * 320), (floor((yy / 240)) * 240), obj_minecraft_chunk)
            if (ch != noone)
            {
                ix = floor(((xx - ch.x) / 20))
                iy = floor(((yy - ch.y) / 20))
                if (ch.CHUNKDATA[iy, ix] > 0 && ch.CHUNKDATA[iy, ix] < 200)
                {
                    block = instance_create((ch.x + (ix * 20)), (ch.y + (iy * 20)), obj_minecraft_block)
                    block.CHUNK = ch
                    block.inchunk_x = ix
                    block.inchunk_y = iy
                    block.type = ch.CHUNKDATA[iy, ix]
                }
                if (ch.CHUNKDATA[iy, ix] == 101)
                    nearlava = 1
                if (ch.CHUNKDATA[iy, ix] == 7)
                    nearcrystal = 1
            }
        }
    }
    old_px = obj_mainchara.x
    old_py = obj_mainchara.y
}
if nearlava
    lightalpha = clamp((lightalpha - 0.05), 0.2, 1)
else if nearcrystal
    lightalpha = clamp((lightalpha - 0.05), 0.4, 1)
else
    lightalpha = clamp((lightalpha + 0.05), 0.2, 1)
depth = 10000
ptilex = (floor(((obj_mainchara.x + 10) / 20)) * 20)
ptiley = (floor(((obj_mainchara.y + 20) / 20)) * 20)
if (rail_placing_mode == 1)
{
    if control_check_pressed(1)
        rail_placing_mode = 2
}
else if (rail_placing_mode == 2)
{
    if (ptilex != old_ptilex || ptiley != old_ptiley)
        scr_minecraft_railPlaceCheck(old_ptilex, old_ptiley, ptilex, ptiley, oldold_ptilex, oldold_ptiley)
    if control_check_pressed(1)
        rail_placing_mode = 0
}
if (old_ptilex != ptilex || old_ptiley != ptiley)
{
    oldold_ptilex = old_ptilex
    oldold_ptiley = old_ptiley
}
old_ptilex = ptilex
old_ptiley = ptiley
if (rail_placing_mode == 2 && global.interact > 0)
    rail_placing_mode = 0

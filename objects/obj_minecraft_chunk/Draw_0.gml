var w, h, yy, chunk_line, xx, block, i, tx, ty;
w = 16
h = 12
if (!loaded)
    exit
for (yy = 0; yy < h; yy++)
{
    for (xx = 0; xx < w; xx++)
    {
        block = CHUNKDATA[yy, xx]
        tx = ((320 * CHUNKX) + (20 * xx))
        ty = ((240 * CHUNKY) + (20 * yy))
        if (block > 0 && block < 100)
        {
            if (block == 7)
            {
                if (((xx + yy) % 2) == 0)
                    draw_sprite(spr_minecraft_crystal0, 0, tx, ty)
                else
                    draw_sprite(spr_minecraft_crystal1, 0, tx, ty)
                if (random(500) < 3)
                {
                    repeat irandom(2)
                    {
                        spark = instance_create((tx + random_range(-5, 25)), (ty + random_range(-5, 25)), obj_chimesparkle)
                        spark.image_xscale = 0.25
                        spark.image_yscale = 0.25
                        spark.vspeed = 0
                    }
                }
            }
            else
                draw_sprite(blocksprites[block], 0, tx, ty)
        }
        if (block == 101)
        {
            draw_set_alpha(max((dsin((((obj_time.time * 2) + (xx * 10)) + (yy * 10))) + 1), 0.2))
            i = 0
            repeat (5)
            {
                draw_sprite_part(spr_hotlandlava, 0, 0, (i * 4), 20, 4, (((320 * CHUNKX) + (20 * xx)) + dsin(((obj_time.time * 2) + (((yy * 20) + (i * 4)) * 2)))), (((240 * CHUNKY) + (20 * yy)) + (i * 4)))
                i++
            }
            draw_set_alpha(1)
        }
        if (block == 200)
            draw_background_part(bg_watertiles_2, 120, 140, 20, 20, tx, ty)
        if (block == 201)
            draw_background_part(bg_watertiles_2, 120, 160, 20, 20, tx, ty)
        if (block == 202)
            draw_background_part(bg_watertiles_2, 160, 120, 20, 20, tx, ty)
        if (block == 203)
            draw_background_part(bg_watertiles_2, 180, 120, 20, 20, tx, ty)
        if (block == 204)
            draw_background_part(bg_watertiles_2, 160, 100, 20, 20, tx, ty)
        if (block == 205)
            draw_background_part(bg_watertiles_2, 180, 100, 20, 20, tx, ty)
    }
}
if debug_mode
    draw_rectangle(x, y, (x + 320), (y + 240), true)

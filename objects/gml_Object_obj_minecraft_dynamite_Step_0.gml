var i, ii;
countdown--
if (countdown > 45)
{
    if ((countdown % 14) > 7 && image_alpha == 0)
        snd_play(snd_mtt_prebomb)
    image_alpha = (countdown % 14) > 7
}
else
{
    if ((countdown % 6) > 3 && image_alpha == 0)
        snd_play(snd_mtt_prebomb)
    image_alpha = (countdown % 6) > 3
}
if (countdown <= 0)
{
    for (i = -4; i < 5; i++)
    {
        for (ii = -4; ii < 5; ii++)
        {
            xx = (x + (i * 20))
            yy = (y + (ii * 20))
            draw_set_color(c_red)
            ch = instance_place((floor((xx / 320)) * 320), (floor((yy / 240)) * 240), obj_minecraft_chunk)
            if (ch != noone)
            {
                ix = floor(((xx - ch.x) / 20))
                iy = floor(((yy - ch.y) / 20))
                if (ch.CHUNKDATA[iy, ix] > 0 && ch.CHUNKDATA[iy, ix] < 100)
                {
                    if ((abs(i) + abs(ii)) <= 6)
                    {
                        scr_minecraft_block_debris(((ch.x + (ix * 20)) + 10), ((ch.y + (iy * 20)) + 10), spr_minecraft_stone)
                        if (random(100) < 30)
                        {
                            drop = instance_create(((ch.x + (ix * 20)) + 6), ((ch.y + (iy * 20)) + 6), obj_minecraft_item)
                            drop.sprite_index = ch.blocksprites[ch.CHUNKDATA[iy, ix]]
                            drop.item = ch.CHUNKDATA[iy, ix]
                            drop.amount = 1
                        }
                        ch.CHUNKDATA[iy, ix] = 0
                    }
                }
            }
        }
    }
    snd_play(snd_bombsplosion)
    scr_shake(3, 3, 1)
    obj_minecraft_controller.old_px = -1
    obj_minecraft_controller.old_py = -1
    instance_destroy(id)
}

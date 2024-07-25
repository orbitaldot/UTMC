var i, smelting;
if (myinteract == 10)
{
    draw_set_color(c_white)
    draw_rectangle((view_xview[0] + 80), (view_yview[0] + 40), (view_xview[0] + 240), (view_yview[0] + 200), false)
    draw_set_color(c_black)
    draw_rectangle((view_xview[0] + 84), (view_yview[0] + 44), (view_xview[0] + 236), (view_yview[0] + 196), false)
    draw_set_color(c_white)
    for (i = 0; i < smeltable_amount; i++)
    {
        if (fuel_amount >= smeltables_count[i])
            draw_set_color(c_white)
        else
            draw_set_color(c_gray)
        draw_set_halign(fa_right)
        draw_text((view_xview[0] + 232), ((view_yview[0] + 50) + (i * 16)), ("x " + string(smeltables_count[i])))
        draw_set_halign(fa_left)
        draw_text((view_xview[0] + 100), ((view_yview[0] + 50) + (i * 16)), scr_gettext(("item_name_" + string(smeltables[i]))))
    }
    draw_set_color(c_white)
    draw_text((view_xview[0] + 100), (view_yview[0] + 24), ("Fuel: " + string(fuel_amount)))
    draw_sprite_ext(spr_heart, 0, (view_xview[0] + 88), ((view_yview[0] + 54) + (16 * sel)), 0.5, 0.5, 0, c_white, 1)
    if (keyboard_check_pressed(vk_down) && sel < (smeltable_amount - 1))
    {
        snd_play(snd_squeak)
        sel += 1
    }
    if (keyboard_check_pressed(vk_up) && sel > 0)
    {
        sel -= 1
        snd_play(snd_squeak)
    }
}

if (myinteract == 10)
{
    draw_set_color(c_white)
    draw_rectangle(((view_xview[0] + 80) - 20), (view_yview[0] + 40), ((view_xview[0] + 240) - 44), (view_yview[0] + 200), false)
    draw_set_color(c_black)
    draw_rectangle(((view_xview[0] + 84) - 20), (view_yview[0] + 44), ((view_xview[0] + 236) - 44), (view_yview[0] + 196), false)
    draw_set_color(c_white)
    for (i = 0; i < array_length_1d(craftables); i++)
    {
        draw_set_halign(fa_left)
        if can_craft[i]
            draw_set_colour(c_white)
        else
            draw_set_colour(c_gray)
        draw_text((view_xview[0] + 80), ((view_yview[0] + 50) + (i * 16)), scr_gettext(("item_name_" + string(craftables[i]))))
    }
    draw_set_color(c_white)
    draw_rectangle((view_xview[0] + 200), (view_yview[0] + 140), (view_xview[0] + 300), (view_yview[0] + 200), false)
    draw_set_color(c_black)
    draw_rectangle(((view_xview[0] + 200) + 4), ((view_yview[0] + 140) + 4), ((view_xview[0] + 300) - 4), ((view_yview[0] + 200) - 4), false)
    draw_set_color(c_white)
    draw_text((view_xview[0] + 208), (view_yview[0] + 154), "Requires:")
    draw_text((view_xview[0] + 208), (view_yview[0] + 170), ((string(craftables_count_req[sel]) + " ") + scr_gettext(("item_name_" + string(craftables_items_req[sel])))))
    draw_set_color(c_white)
    draw_sprite_ext(spr_heart, 0, (view_xview[0] + 68), ((view_yview[0] + 54) + (16 * sel)), 0.5, 0.5, 0, c_white, 1)
    draw_set_alpha(warn_alpha)
    draw_text((view_xview[0] + 60), (view_yview[0] + 20), "No space in inventory!")
    draw_set_alpha(1)
    if (keyboard_check_pressed(vk_down) && sel < (array_length_1d(craftables) - 1))
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
if (warn_alpha > 0)
    warn_alpha -= 0.1

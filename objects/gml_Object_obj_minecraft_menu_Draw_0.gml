var f, pos, i, p;
draw_set_font(fnt_maintext)
draw_set_alpha(1)
draw_set_valign(fa_bottom)
draw_set_font(fnt_small)
draw_set_color(c_gray)
draw_text(2, 240, "Undertale by Toby Fox, mod by orbitaldot.")
draw_set_valign(fa_top)
draw_set_font(fnt_maintext)
draw_set_color(c_white)
if control_check_pressed(0)
{
    if (options[selected] == 0)
    {
        if (!file_exists("minecraft/world.dat"))
        {
            f = file_text_open_write("minecraft/world.dat")
            file_text_write_real(f, 0)
            file_text_close(f)
        }
        global.weapon = 400
        global.armor = 450
        room_goto(room_minecraft)
    }
    else if (options[selected] == 1)
    {
        if file_exists("file60")
            global.filechoice = 60
        scr_load()
    }
    else if (options[selected] == 2)
        room_goto(room_intromenu)
}
warn_alpha = lerp(warn_alpha, 1, 0.2)
pos = heartpositions[selected]
heartx = lerp(heartx, pos[0], 0.4)
hearty = lerp(hearty, pos[1], 0.4)
for (i = 0; i < array_length_1d(options); i++)
{
    p = heartpositions[i]
    draw_text((p[0] + 16), (p[1] - 4), option_names[options[i]])
    if (options[i] == 2 && options[selected] == 2)
    {
        draw_set_alpha(warn_alpha)
        draw_set_color(c_yellow)
        draw_text((p[0] + 16), (p[1] + 16), string_hash_to_newline("WARNING !!!#The item amount feature may#break a regular playthrough#of UNDERTALE.#Proceed with care."))
    }
}
draw_set_alpha(1)
draw_sprite(spr_heartsmall, 0, heartx, hearty)
if (keyboard_check_pressed(vk_down) && selected < (array_length_1d(options) - 1))
{
    warn_alpha = 0
    selected += 1
    snd_play(snd_squeak)
}
if (keyboard_check_pressed(vk_up) && selected > false)
{
    warn_alpha = 0
    selected -= 1
    snd_play(snd_squeak)
}

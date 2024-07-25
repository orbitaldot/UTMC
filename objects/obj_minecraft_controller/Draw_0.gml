var pointdist, pointdir;
draw_set_alpha(lightalpha)
draw_sprite(spr_minecraft_border, 0, view_xview[0], view_yview[0])
draw_set_color(c_white)
draw_set_alpha(1)
if (rail_placing_mode == 1)
    draw_text((view_xview[0] + 2), (view_yview[0] + 2), "Press X/SHIFT to START placing rails.")
if (rail_placing_mode == 2)
    draw_text((view_xview[0] + 2), (view_yview[0] + 2), "Press X/SHIFT to STOP placing rails.")
if (global.armor == 451)
{
    pointdist = point_distance(((view_xview[0] + 160) + 10), ((view_yview[0] + 120) + 10), 160, 120)
    pointdir = point_direction(((view_xview[0] + 160) + 10), ((view_yview[0] + 120) + 10), 160, 120)
    if (pointdist > 120)
    {
        if (crystalpointer_alpha < 1)
            crystalpointer_alpha += 0.15
    }
    else if (crystalpointer_alpha > 0)
        crystalpointer_alpha -= 0.15
    draw_sprite_ext(spr_crystalpointer, 0, clamp(170, (view_xview[0] + 10), (view_xview[0] + 310)), clamp(130, (view_yview[0] + 10), (view_yview[0] + 230)), 1, 1, pointdir, c_white, crystalpointer_alpha)
}

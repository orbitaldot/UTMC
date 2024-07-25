var stack;
if (myinteract == 1)
{
    global.interact = 1
    myinteract = 9
    event_user(0)
    bogos = 1
    sel = 0
}
if (bogos < 3)
    bogos++
if (myinteract == 10 && bogos == 3)
{
    if control_check_pressed(0)
    {
        if can_craft[sel]
        {
            stack = scr_minecraft_itemStackable(craftables[sel])
            if (inventory_space > 0 || (inventory_space == 0 && stack && have_crafted_item[sel] > 0))
            {
                repeat craftables_count_req[sel]
                    scr_itemremove(craftables_items_req[sel])
                scr_itemget(craftables[sel])
                snd_play(snd_select)
                event_user(0)
            }
            else
            {
                snd_play(snd_hurt1)
                warn_alpha = 4
            }
        }
    }
    if control_check_pressed(1)
    {
        myinteract = 0
        global.interact = 0
    }
}

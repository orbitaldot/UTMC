var i, smelting;
if (myinteract == 1)
{
    scr_minecraft_furnaceSmeltableList()
    sel = 0
    if (smeltable_amount > 0 && fuel_amount > 0)
    {
        global.interact = 1
        myinteract = 10
        bogos = 0
    }
    else
    {
        global.typer = 5
        global.msc = 0
        if (smeltable_amount == 0)
            global.msg[0] = "Nothing to smelt! /%%"
        else if (fuel_amount == 0)
            global.msg[0] = "No coal for fuel! /%%"
        global.interact = 1
        instance_create(0, 0, obj_dialoguer)
        myinteract = 2
    }
}
if (myinteract == 2)
{
    if (!instance_exists(obj_dialoguer))
    {
        global.interact = 0
        myinteract = 0
    }
}
if (bogos < 2)
    bogos++
if (myinteract == 10 && bogos == 2)
{
    if control_check_pressed(0)
    {
        if (fuel_amount >= smeltables_count[sel])
        {
            smelting = smeltables[sel]
            scr_itemcheck(smelting)
            i = location
            scr_minecraft_smeltCheck(smelting, i, 103, 600)
            scr_minecraft_smeltCheck(smelting, i, 104, 601)
            scr_itemcheck(102)
            global.item_count[location] = (fuel_amount - smeltables_count[sel])
            scr_minecraft_furnaceSmeltableList()
            if (sel >= array_length_1d(smeltables))
                sel = (array_length_1d(smeltables) - 1)
            snd_play(snd_select)
        }
        if (smeltable_amount == 0)
        {
            myinteract = 0
            global.interact = 0
        }
    }
    if control_check_pressed(1)
    {
        myinteract = 0
        global.interact = 0
    }
}

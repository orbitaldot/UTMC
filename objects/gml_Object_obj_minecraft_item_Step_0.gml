life--
if (life < 0)
    instance_destroy(id)
if place_meeting(x, y, obj_mainchara)
{
    scr_itemroom()
    scr_itemcheck((100 + item))
    if (itemfree > 0 || haveit)
    {
        scr_itemget((100 + item))
        instance_destroy(id)
    }
}

var i, from, to;
i = argument1
from = argument2
to = argument3
if (argument0 == from)
{
    scr_itemcheck(to)
    if (haveit == true)
    {
        scr_itemshift(i, 0)
        i = location
        global.item_count[i] += smeltables_count[sel]
    }
    else
    {
        global.item[i] = to
        global.item_count[i] = smeltables_count[sel]
    }
}

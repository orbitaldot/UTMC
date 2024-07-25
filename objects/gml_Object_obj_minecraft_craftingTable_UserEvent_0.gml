var jjj;
for (jjj = 0; jjj < array_length_1d(craftables); jjj++)
{
    can_craft[jjj] = 0
    have_it[jjj] = 0
    have_crafted_item[jjj] = 0
    scr_itemcheck(craftables_items_req[jjj])
    if (haveit == true && itemcount >= craftables_count_req[jjj])
        can_craft[jjj] = 1
    have_it[jjj] = itemcount
    scr_itemcheck(craftables[jjj])
    have_crafted_item[jjj] = itemcount
}
myinteract = 10
scr_itemroom()
inventory_space = itemfree

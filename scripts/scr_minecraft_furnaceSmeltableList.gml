smeltables = 0
smeltables[0] = 0
smeltable_amount = 0
scr_itemcheck(103)
if (haveit == true)
{
    smeltables[smeltable_amount] = 103
    smeltables_count[smeltable_amount] = itemcount
    smeltable_amount++
}
scr_itemcheck(104)
if (haveit == true)
{
    smeltables[smeltable_amount] = 104
    smeltables_count[smeltable_amount] = itemcount
    smeltable_amount++
}
scr_itemcheck(102)
fuel_amount = itemcount

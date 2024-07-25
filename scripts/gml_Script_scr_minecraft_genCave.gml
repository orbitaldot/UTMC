var cx, cy, xx, yy, i, ii, _temp_local_var_1, repeats, ch, cavetype;
ch = argument0
cx = argument1
cy = argument2
xx = 8
yy = 6
if (random(100) < 30)
    exit
cavetype = 0
if (random(100) > 60 && abs(cx) >= 2 && abs(cy) >= 2)
    cavetype = 1
else if (random(100) > 66 && abs(cx) >= 2 && abs(cy) >= 2)
    cavetype = 2
for (repeats = irandom_range(3, 5); repeats > 0; repeats--)
{
    xx = (8 + irandom_range(-5, 5))
    yy = (6 + irandom_range(-3, 3))
    for (i = -2; i < 3; i++)
    {
        for (ii = -2; ii < 3; ii++)
        {
            if ((abs(i) != 2 || abs(ii) != 2) && ch.CHUNKDATA[(yy + i), (xx + ii)] < 100)
                ch.CHUNKDATA[(yy + i), (xx + ii)] = 0
            if (cavetype == 1 && abs(i) < 2 && abs(ii) < 2)
                ch.CHUNKDATA[(yy + i), (yy + ii)] = 101
            else if (cavetype == 2 && abs(i) < 2 && abs(ii) < 2)
            {
                if (random(100) > 40)
                    ch.CHUNKDATA[(yy + i), (xx + ii)] = 7
            }
        }
    }
}

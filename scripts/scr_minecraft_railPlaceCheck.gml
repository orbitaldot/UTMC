var olx, oly, xx, yy, rail_to_place, olx2, oly2, ddx, ddy, dx, dy;
olx = argument0
oly = argument1
xx = argument2
yy = argument3
olx2 = argument4
oly2 = argument5
rail_to_place = 200
if (abs((yy - oly)) >= 1)
    rail_to_place = 201
ddx = (xx - olx2)
ddy = (yy - oly2)
dx = (xx - olx)
dy = (yy - oly)
if ((ddx > 0 && ddy > 0 && dy > 0) || (ddx < 0 && ddy < 0 && dx < 0))
    scr_minecraft_setBlock(olx, oly, 205)
if ((ddx > 0 && ddy > 0 && dx > 0) || (ddx < 0 && ddy < 0 && dy < 0))
    scr_minecraft_setBlock(olx, oly, 202)
if ((ddx < 0 && ddy > 0 && dy > 0) || (ddx > 0 && ddy < 0 && dx > 0))
    scr_minecraft_setBlock(olx, oly, 204)
if ((ddx < 0 && ddy > 0 && dx < 0) || (ddx > 0 && ddy < 0 && dy < 0))
    scr_minecraft_setBlock(olx, oly, 203)
scr_minecraft_setBlock(xx, yy, rail_to_place)

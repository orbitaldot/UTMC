var cantmine, debris, sprite, i, ii, drop;
cantmine = 0
if (type == 3 && global.weapon < 401)
    cantmine = 1
if ((type == 4 || type == 5 || type == 6) && global.weapon < 402)
    cantmine = 1
if (type == 101)
{
    global.interact = 0
    myinteract = 0
    exit
}
if cantmine
{
    myinteract = 3
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = "* Your pickaxe is too weak&  to mine this material.../%%"
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
else
{
    sprite = spr_minecraft_stone
    if (CHUNK != noone)
    {
        sprite = CHUNK.blocksprites[CHUNK.CHUNKDATA[inchunk_y, inchunk_x]]
        CHUNK.CHUNKDATA[inchunk_y, inchunk_x] = 0
    }
    snd_play(snd_hurt1)
    instance_destroy(id)
    drop = instance_create((x + 6), (y + 6), obj_minecraft_item)
    drop.sprite_index = sprite
    drop.item = type
    drop.amount = 1
    myinteract = 0
    global.interact = 0
    scr_minecraft_block_debris(x, y, sprite)
}

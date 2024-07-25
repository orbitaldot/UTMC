var chx, chy, chunk, chunkdat;
chx = argument0
chy = argument1
gen_solids = argument2
chunk = instance_position((320 * chx), (240 * chy), obj_minecraft_chunk)
if (chunk == noone)
{
    chunk = instance_create((320 * chx), (240 * chy), obj_minecraft_chunk)
    chunk.CHUNKX = chx
    chunk.CHUNKY = chy
    chunkdat = scr_minecraft_loadChunkTerrain(chunk, chx, chy)
}

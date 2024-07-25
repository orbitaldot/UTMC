var chunkdat, chunkx, chunky, filename, file, yy, chunk_line, xx;
chunkdat = argument0
chunkx = argument1
chunky = argument2
filename = (((("minecraft/CHUNK_" + string(CHUNKX)) + "_") + string(CHUNKY)) + ".dat")
file = file_text_open_write(filename)
for (yy = 0; yy < 12; yy++)
{
    for (xx = 0; xx < 16; xx++)
    {
        file_text_write_real(file, CHUNKDATA[yy, xx])
        file_text_writeln(file)
    }
}
file_text_close(file)

for (i = -1; i < 2; i += 2)
{
    for (ii = -1; ii < 2; ii += 2)
    {
        debris = instance_create((argument0 + 10), (argument1 + 10), obj_minecraft_particle_debris)
        debris.sprite_index = argument2
        debris.vel[0] = (2 * i)
        debris.vel[1] = (2 * ii)
    }
}

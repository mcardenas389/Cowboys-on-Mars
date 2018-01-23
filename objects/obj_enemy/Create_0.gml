/// @description Initialize Variables
//Variables
hp = 3;
hspd = 0;
vspd = 0;
spd = 3;
flash = 0;
target_x = 0;
target_y = 0;
sight = 64;
state = scr_enemy_idle;

//Alarm
bullet_cooldown = FRAME_SEC;
alarm[0] = bullet_cooldown;
alarm[1] = FRAME_SEC * irandom_range(2, 5);
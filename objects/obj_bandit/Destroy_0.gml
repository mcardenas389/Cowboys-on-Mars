/// @description Choose to Drop Health and Destroy Gun; Spawn Death Related Objects
var obj = choose(noone, obj_health);

if obj != noone
	instance_create_layer(x, y, "Player", obj);

instance_destroy(gun);

instance_create_layer(x, y - 10, "Enemies", obj_bandit_hat);
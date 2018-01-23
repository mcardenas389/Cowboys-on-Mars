/// @description Flash When Close to Death
var interval = 16;

if alarm[0] <= FRAME_SEC * 2 && alarm[0] % interval <= interval / 2 {
	//draw nothing
}
else
	draw_self();
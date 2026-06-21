if (global.paused || (instance_exists(oIntro) == false && global.cutscenes > 0))
	return;

// Destination
if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

// Move toward
x += (xTo - x) / 4;
y += (yTo - y) / 4;

// Maintain camera in the room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

// Screenshake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

// Prevent division by zero
if (shakeLenght > 0){
	shakeRemain = max(0, shakeRemain - ((1 / shakeLenght) * shakeMagnitude));
} else {
	shakeRemain = 0;
}

// Camera set view
var _x = x - viewWidthHalf;
var _y = y - viewHeightHalf
camera_set_view_pos(view_camera[0], _x, _y);

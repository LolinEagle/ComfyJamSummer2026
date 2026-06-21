function scPlayerStateDash(){
	// Movement
	hSpeed = lengthdir_x(speedDash, direction);
	vSpeed = lengthdir_y(speedDash, direction);
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedDash);
	var _collided = scPlayerCollision();

	// Change State
	if (moveDistanceRemaining <= 0) state = scPlayerStateFree;

	// If collide with something
	if (_collided){
		state = scPlayerStateBonk;
		moveDistanceRemaining = distanceBonk;
	}
	global.playerItemsAmmo[ITEM.DASH] = 15;
}

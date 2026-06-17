///@desc Cause a room transition
if (
	instance_exists(oPlayer) && position_meeting(oPlayer.x, oPlayer.y, id) &&
	oPlayer.state != scPlayerStateDead && !instance_exists(oTransition)
){
	global.targetRoom = targetRoom;
	global.targetX = targetX;
	global.targetY = targetY;
	global.targetDirection = oPlayer.direction;
	global.targetSprite = oPlayer.sprite;
	global.targetSpriteRun = oPlayer.spriteRun;
			
	// Transition
	oPlayer.state = scPlayerStateTransition;
	scRoomTransition(transitionType, targetRoom);

	// End the Transition
	instance_destroy();
}

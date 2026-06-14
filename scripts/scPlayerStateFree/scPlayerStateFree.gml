function scPlayerStateFree(){
	#region Movement & Sprite
	// Movement
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);
	scPlayerCollision();

	// Sprite
	var _oldSprite = sprite_index;
	if (inputMagnitude != 0){
		direction = inputDirection;
		sprite_index = spriteRun;
		image_speed = 0;
	} else {
		sprite_index = sprite;
	}
	if (_oldSprite != sprite_index) localFrame = 0;
	scAnimateSprite();
	#endregion

	#region Change State
	if (keyUse){
		// Entities Finder
		activate = noone;
		var _activateX = x + lengthdir_x(10, direction);
		var _activateY = y + lengthdir_y(10, direction);
		var _activateSize = 4;
		var _activateList = ds_list_create();
		var _entitiesFound = collision_rectangle_list(
			_activateX - _activateSize,
			_activateY - _activateSize,
			_activateX + _activateSize,
			_activateY + _activateSize,
			pEntity,
			false,
			true,
			_activateList,
			true
		);
		while (_entitiesFound > 0){
			var _check = _activateList[| --_entitiesFound];
			if (_check != global.iLifted && _check.entityActivateScript != -1){
				activate = _check;
				break;
			}
		}
		ds_list_destroy(_activateList);
		if (activate == noone){
			if (global.iLifted != noone) scPlayerThrow();// Throw
		} else {
			script_execute_ext(
				activate.entityActivateScript, activate.entityActivateArgs
			);
			
			// Make NPC face the Player
			if (activate.entityNPC){
				with (activate){
					direction = point_direction(x, y, other.x, other.y);
					image_index = CARDINAL_DIR;
				}
			}
		}
	}
	#endregion
	
	#region Items
	// Use Items
	if (keyItem && global.playerHasItems && global.playerItem != ITEM.NONE){
		switch(global.playerItem){
			case ITEM.DASH: scUseItemDash(); break;
			case ITEM.HOOK: scUseItemHook(); break;
			case ITEM.SPEED: scUseItemSpeed(); break;
			case ITEM.MEDISHOT: scPlayerMediShot(); break;
			default: break;
		}
	}
	
	if (!global.playerHasItems) return;
	
	// Cycle items
	if (keyItemSelect){
		do {
			global.playerItemEquipt++;
			if (global.playerItemEquipt < 0) global.playerItemEquipt = 3;
			else if (global.playerItemEquipt > 3) global.playerItemEquipt = 0;
		} until (
			global.playerItemEquiptArray[global.playerItemEquipt] != ITEM.NONE
		);
	}
	for (var _i = 0; _i <= 3; _i++){
		if (global.playerItemEquipt == _i)
			global.playerItem = global.playerItemEquiptArray[_i];
	}
	#endregion
}

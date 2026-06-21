function scActivateLiftable(_id){
	if (global.iLifted == noone){
		global.iLifted = _id;
		with (global.iLifted){
			entityCollision = false;
			lifted = true;
			persistent = true;
		}
	}
}

function scAnimateSprite(){
	if (global.paused) return;

	var _totalFrames = sprite_get_number(sprite_index) / 4;
	image_index = localFrame + (CARDINAL_DIR * _totalFrames);
	localFrame += sprite_get_speed(sprite_index) / FPS;

	// Check if animation is ended
	if (localFrame >= _totalFrames){
		animationEnd = true;
		localFrame = 0;
	} else {
		animationEnd = false;
	}
}

function scCollectCoin(_amount){
	global.playerMoney += _amount;
}

function scDrawSet(
	_alpha = 1,
	_color = c_white,
	_font = SMALL,
	_halign = fa_center,
	_valign = fa_middle
){
	draw_set_alpha(_alpha);
	draw_set_color(_color);
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
}

function scDropItems(_x, _y, _items){
	var _itemsLength = array_length(_items);
	if (_itemsLength > 1){
		var _anglePerItem = 360 / _itemsLength;
		var _angle = random(360);
		for (var i = 0; i < _itemsLength; i++){
			with (instance_create_layer(_x, _y, "Instances", _items[i])){
				direction = _angle;
				spd = 0.75 + (_itemsLength * 0.1) + random(0.1);
			}
			_angle += _anglePerItem;
		}
	} else {
		instance_create_layer(_x, _y, "Instances", _items[0]);
	}
}

function scEntityDropList(){
	entityDropList = choose(
		[oInstanceDestroy],
		[oCoin],
		[oCoin, oCoin],
		[oCoin, oCoin, oCoin]
	);
}

function scEntityHitDestroy(){
	instance_destroy();
}

function scEntityHitSolid(){
	flash = 0.5;
}

function scRoomTransition(_type, _target){
	if (instance_exists(oTransition) == false){
		with (instance_create_depth(0, 0, -9999, oTransition)){
			type = _type;
			target = _target;
		}
	}
}

function scWave(_from, _to, _time, _offset){
	wave = (_to - _from) * 0.5;
	return _from + wave + sin(
		(((current_time * 0.001) + _time * _offset) / _time) * (pi * 2)
	) * wave;
}

function scCollectCoin(_amount){
	global.playerMoney += _amount;
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

function scWave(_from, _to, _time, _offset){
	wave = (_to - _from) * 0.5;
	return _from + wave + sin(
		(((current_time * 0.001) + _time * _offset) / _time) * (pi * 2)
	) * wave;
}

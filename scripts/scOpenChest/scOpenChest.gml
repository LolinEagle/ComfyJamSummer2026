function scOpenChestItem(_item, _enum){
	global.playerHasItems = true;
	global.playerItem = _enum;
	global.playerItemEquipt = _item;
	global.playerItemEquiptArray[_item] = _enum;
}

function scOpenChest(_item){
	if (!activate.entityChestOpen){
		switch (_item){
			case 0:
				scOpenChestItem(_item, ITEM.DASH)
			break;
			case 1:
				scOpenChestItem(_item, ITEM.HOOK)
			break;
			case 2:
				scOpenChestItem(_item, ITEM.SPEED)
			break;
			case 3:
				scOpenChestItem(_item, ITEM.MEDISHOT)
			break;
		}
		with (activate) image_index = 1;
	}
	activate.entityChestOpen = true;
}

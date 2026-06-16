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
				scOpenChestItem(_item, ITEM.DASH);
				scNewTextBox("You have unlocked the dash.\nYou can use it to quickly\nmove a short distance.", 3);
			break;
			case 1:
				scOpenChestItem(_item, ITEM.HOOK);
				scNewTextBox("You have unlocked the\nhook. You can use it\nto hold onto objects.", 3);
			break;
			case 2:
				scOpenChestItem(_item, ITEM.SPEED);
				scNewTextBox("You have unlocked the speed\nboost. You can use it to move\nquickly for a short time.", 3);
			break;
			case 3:
				scOpenChestItem(_item, ITEM.MEDISHOT);
				scNewTextBox("You have unlocked the phone.\nYou can use it to order\nsome yummy food.", 3);
			break;
		}
		with (activate) image_index = 1;
	}
	activate.entityChestOpen = true;
}

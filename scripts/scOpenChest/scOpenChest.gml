function scOpenChestItem(_item, _enum){
	global.playerItem = _enum;
	global.playerItemEquipt = _item;
	global.playerItemEquiptArray[_item] = _enum;
}

function scOpenChest(_item){
	if (activate.entityChestOpen == false){
		audio_play_sound(snChest, 0, false);
		switch (_item){
			case 0:
				scOpenChestItem(_item, ITEM.DASH);
				scNewTextBox(@"You have unlocked the dash. You can use it to 
quickly move a short distance.", 3);
			break;
			case 1:
				scOpenChestItem(_item, ITEM.HOOK);
				scNewTextBox(@"You have unlocked the hook. You can use it to 
hold onto objects.", 3);
			break;
			case 2:
				scOpenChestItem(_item, ITEM.SPEED);
				scNewTextBox(@"You have unlocked the speed boost. You can use 
it to move quickly for a short time.", 3);
			break;
			case 3:
				scOpenChestItem(_item, ITEM.MEDISHOT);
				scNewTextBox(@"You have unlocked the phone. You can use it to 
order some yummy food.", 3);
			break;
		}
		with (activate) image_index = 1;
	}
	activate.entityChestOpen = true;
}

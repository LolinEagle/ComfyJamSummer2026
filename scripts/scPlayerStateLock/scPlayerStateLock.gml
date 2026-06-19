function scPlayerStateLock(){
	// Movement
	hSpeed = 0;
	vSpeed = 0;

	// Sprite
	if (instance_exists(oMansionIntro) == false){
		sprite_index = sprite;
		localFrame = 0;
	}
	scAnimateSprite();
	
	// Shop
	if (instance_exists(oHud) && oHud.isShopping && keyItemShop){
		instance_destroy(oShopSandwich);
		oHud.isShopping = false;
		state = scPlayerStateFree;
	}
}

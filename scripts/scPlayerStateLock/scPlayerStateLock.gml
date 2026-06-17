function scPlayerStateLock(){
	// Movement
	hSpeed = 0;
	vSpeed = 0;

	// Sprite
	sprite_index = sprite;
	localFrame = 0;
	scAnimateSprite();
	
	// Shop
	if (oHud.isShopping && keyItemShop){
		instance_destroy(oShopSandwich);
		oHud.isShopping = false;
		state = scPlayerStateFree;
	}
}

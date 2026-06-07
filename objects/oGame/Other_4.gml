// Create Title
if (room == room_first){
	instance_create_layer(RES_W_HALF, RES_H_HALF - 64, layer, oTitleNewGame);
	instance_create_layer(RES_W_HALF, RES_H_HALF + 64, layer, oTitleQuit);
}

// Layer Set Visible
if (!global.gameDebug) layer_set_visible("tsCol", false);

if (global.paused){
	scDrawSet();
	draw_text(RES_W_HALF, RES_H_HALF - 32, "Pause");
	draw_text(RES_W_HALF, RES_H_HALF, "Return");
	draw_text(RES_W_HALF, RES_H_HALF + 32, "Menu");
	draw_text(RES_W_HALF - 32, RES_H_HALF + pauseState * 32 , ">");
}

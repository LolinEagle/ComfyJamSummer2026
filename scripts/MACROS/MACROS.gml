// Game
#macro VERSION "v 0.1.0"
#macro FPS 60
#macro TILE_SIZE 32
#macro CARDINAL_DIR round(direction / 90)

// Resolution
#macro RES_W 640
#macro RES_H 360
#macro RES_W_HALF 320
#macro RES_H_HALF 180

// Bind
#macro KEY_USE keyboard_check_pressed(ord("E"))
#macro KEY_ITEM keyboard_check_pressed(ord("F"))
#macro KEY_ITEM_SELECT keyboard_check_pressed(ord("G"))
#macro KEY_ITEM_SHOP keyboard_check_pressed(ord("R"))
#macro KEY_ATTACK_PRESSED mouse_check_button_pressed(mb_left)

// Transition
#macro TRANSITION_SPEED 0.02
#macro OUT 0
#macro IN 1

// Font
#macro SMALL	fKenneyPixel12
#macro MEDIUM	fKenneyPixel24
#macro LARGE	fKenneyPixel36

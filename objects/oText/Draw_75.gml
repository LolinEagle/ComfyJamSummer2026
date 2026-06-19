if (global.paused) return;

// Background
scDrawSet(0.8, c_white, LARGE, fa_center, fa_top);
scNineSliceBoxStretched(sTextBoxBg, x1, y1, x2, y2, background);
draw_set_alpha(1);

// Print caracter by character
var _print = string_copy(message, 1, textProgress);
if (responses[0] != -1 && textProgress >= string_length(message)){
	for (var i = 0; i < array_length(responses); i++){
		_print += "\n";
		if (i == responseSelected) _print += "> ";
		_print += responses[i];
		if (i == responseSelected) _print += "< ";
	}
}

// Text
draw_set_color(c_black);
draw_text_ext(((x1 + x2) / 2) + 2, y1 + 20, _print, 32, 432);
draw_set_color(c_white);
draw_text_ext((x1 + x2) / 2, y1 + 18, _print, 32, 432);

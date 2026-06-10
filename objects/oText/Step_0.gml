// Text Speed
lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

// Textbox character
x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

// Input & Response Selected
keyUp	= keyboard_check_pressed(global.up);
keyDown = keyboard_check_pressed(global.down);
responseSelected += keyDown - keyUp;
var _max = array_length(responses) - 1;
var _min = 0;
if (responseSelected > _max) responseSelected = _min;
if (responseSelected < _min) responseSelected = _max;

// What to do next
if (KEY_USE || KEY_ATTACK_PRESSED || keyboard_check_pressed(vk_enter)){
	var _messageLength = string_length(message);

	// If end of message
	if (textProgress >= _messageLength){
		// If have responses
		if (responses[0] != -1){
			with (originInstance){
				scDialogueResponses(
					other.responsesScripts[other.responseSelected]
				);
			}
		}
		
		// Destroy the Text Box
		if (cutscenes) global.cutscenes++;
		instance_destroy();
		
		// Text Queued
		if (instance_exists(oTextQueued))
			with (oTextQueued) ticket--;
		else
			with (oPlayer) state = lastState;
	} else {
		if (textProgress > 2) textProgress = _messageLength;
	}
}


///@arg gamepad

for (var _b = 0; _b<gamepad_button_count(argument0); _b++) {
	if gamepad_button_check_pressed(argument0, _b) {
		return true;
	}
}
return false;

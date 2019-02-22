
for (var i = 0; i < 8; i++)
{
    if scr_buttonPressed(i) {  
		
		var _addDevice = true;
		for (var _dd=0; _dd<array_length_1d(playerInputDevice); _dd++) {
			if playerInputDevice[_dd] == i {
				_addDevice = false;
			}
		}
		
		if _addDevice {
			for (var _d=0; _d<array_length_1d(playerInputDevice); _d++) {
				if playerInputDevice[_d] == noone {
					playerInputDevice[_d] = i;
					break;
				}
			}
		}
		
		/*
		LOOP THROUGH PLAYERINPUTDEVICE ARRAY AND SET THE FIRST -2 VALUE YOU 
		FIND TO THE GAMEPAD PRESSED. 
		CHECK SEPARATELY FOR KEYBOARD INPUTS, AND IF YOU FIND ONE OF THOSE, 
		LOOP THROUGH IN THE SAME WAY AND REPLACE THE FIRST -2 YOU FIND 
		WITH A -1.  Why -1? Because 0-7 are all reserved for gamepads.
		*/
	}
}

if keyboard_check_pressed(vk_enter) {
	var _addDevice = true;
	for (var _dd=0; _dd<array_length_1d(playerInputDevice); _dd++) {
		if playerInputDevice[_dd] == -1 {
			_addDevice = false;
		}
	}
		
	if _addDevice {
		for (var _d=0; _d<array_length_1d(playerInputDevice); _d++) {
			if playerInputDevice[_d] == noone {
				playerInputDevice[_d] = -1;
				break;
			}
		}
	}
}




for (var _p=0; _p<array_length_1d(playerInputDevice); _p++) {
	
	checkInputDevice(_p);
	
}


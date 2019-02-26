with input {
	for (var i = 0; i < 11; i++)
	{
	    if scr_buttonPressed(i) {  
		
			var _addDevice = true;
			
			for (var _dd=0; _dd<ds_list_size(global.playerData); _dd++) {
				var _list = global.playerData[| _dd]
				if _list[@ PLAYER_DATA.INPUT_SOURCE] == i {
					_addDevice = false;
				}
			}
		
			if _addDevice {
				playerAdd(i)
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
		for (var _dd=0; _dd<ds_list_size(global.playerData); _dd++) {
			var _list = global.playerData[| _dd]
			if _list[@ PLAYER_DATA.INPUT_SOURCE] == -1 {
				_addDevice = false;
			}
		}
		
		if _addDevice {
			playerAdd(-1)
		}
	}
}
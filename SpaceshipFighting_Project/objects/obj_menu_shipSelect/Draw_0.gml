
var _shipCount = array_length_1d(global.ships);

//for (var _i=0; _i<_shipCount; _i++) {
//	draw_sprite(spr_menu_ships, _i, 48 + (_i*48), 64);
//}

//if keyboard_check_pressed(vk_enter) {
//	playerAdd();
//}

var _shipsSelected = [];

for (var _p=0; _p<array_height_2d(global.playerData); _p++) {
	_shipsSelected[_p] = global.playerData[_p, PLAYER_DATA.SHIP];
}


allReady = true;

for (var _r=0; _r<4; _r++) {
	draw_set_color(c_white);
	
	var _x = 96 + (_r*room_width/4);
	var _y = room_height/2;
	
	//draw_roundrect(_r*(room_width/4), 128, (_r+1)*(room_width/4), room_height-128, false)
	//nineSlice(spr_menuBox_9slice, _r*(room_width/4), 128, (_r+1)*room_width/4, room_height-32, true)
	
	draw_sprite(spr_menuBox_shipSelect, 0, _x, _y);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	if _r >= global.playerCount {
		draw_text_outlined(_x, _y, "PRESS\nSTART", c_white, c_black, 1, 1, 0)
	} else if global.playerData[_r, PLAYER_DATA.INPUT_SOURCE] != noone {
		if !playerReady[_r] {
			allReady = false;
			var _dir = inputCheckPressed(_r, INPUT.RIGHT, inputCreate(_r)) - inputCheckPressed(_r, INPUT.LEFT, inputCreate(_r));
			if _dir != 0 {
			
				if _dir < 0 {
					arrowL[_r] = 2;
				}
				if _dir > 0 {
					arrowR[_r] = 2;
				}
				
				TweenFire(id, EaseOutElastic, 0, false, 0, 60, TPArray(shipRot, _r), 90+(45*-sign(_dir)), 90);
				TweenFire(id, EaseOutBack, 0, false, 0, 30, TPArray(shipXOff, _r), 16*sign(_dir), 0);
				
				global.playerData[_r, PLAYER_DATA.SHIP] = loopVal(global.playerData[_r, PLAYER_DATA.SHIP]+_dir, 0, array_length_1d(global.ships)-1);
			
				while(checkArrayFor(_shipsSelected, global.playerData[_r, PLAYER_DATA.SHIP]))
					global.playerData[_r, PLAYER_DATA.SHIP] = loopVal(global.playerData[_r, PLAYER_DATA.SHIP]+_dir, 0, array_length_1d(global.ships)-1);
			
			}
			
			// Select ship
			if inputCheckPressed(_r, INPUT.A, inputCreate(_r)) {
				playerReady[_r] = true;
				audio_play_sound(snd_shipSelect_select, 100, false);
				TweenFire(id, EaseInBack, 0, false, 0, 15, TPArray(buttonA, _r), 1, 0);
				TweenFire(id, EaseInOutBack, 0, false, 0, 15, TPArray(shipScale, _r), 2, 3);
			}
		}
		
		// Draw current selected ship
		draw_sprite_ext(object_get_sprite(global.ships[global.playerData[_r, PLAYER_DATA.SHIP]]), 0, _x+shipXOff[_r], _y, shipScale[_r], shipScale[_r], shipRot[_r], c_white, 1)
		
		// Draw ship name
		draw_text_outlined(_x, _y-128, "SHIP " + string(global.playerData[_r, PLAYER_DATA.SHIP] + 1), c_white, c_black, 1, 1, 0)
		
		// Draw arrows on bottom
		draw_sprite_ext(spr_arrows, 2, _x-16 - (arrowL[_r]*16), _y+128, arrowL[_r], arrowL[_r], 0, c_white, 1)
		draw_sprite_ext(spr_arrows, 0, _x+16 + (arrowR[_r]*16), _y+128, arrowR[_r], arrowR[_r], 0, c_white, 1)
		
		if playerReady[_r] {
			arrowL[_r] = lerp(arrowL[_r], 0, 0.2);
			arrowR[_r] = lerp(arrowR[_r], 0, 0.2);
		} else {
			arrowL[_r] = lerp(arrowL[_r], 1, 0.2);
			arrowR[_r] = lerp(arrowR[_r], 1, 0.2);
		}
		
		// Draw A button
		draw_sprite_ext(spr_hud_icons_controller, INPUT.A, _x, _y+128, buttonA[_r], buttonA[_r], 0, c_white, 1)
		
		if inputCheckPressed(_r, INPUT.B, inputCreate(_r)) {
			if playerReady[_r] == true {
				playerReady[_r] = false
				audio_play_sound(snd_shipSelect_deselect, 100, false);
				TweenFire(id, EaseOutBack, 0, false, 0, 15, TPArray(buttonA, _r), 0, 1);
				TweenFire(id, EaseInOutBack, 0, false, 0, 15, TPArray(shipScale, _r), 3, 2);
			} else {
				if _r == 0 {
					room_change_swipe(rm_modeSelect);
				} else {
					playerDelete(_r)
				}
			}
		}
		
	}
	
}

if global.playerCount < 2
	allReady = false;

if allReady or global.debug {
	if startScale == 0 {
		audio_play_sound(snd_shipSelect_readyToBattle, 100, false);
		TweenFire(id, EaseOutElastic, 0, false, 0, 45, "startScale", startScale, 2)
	}
	draw_text_outlined(room_width/2, room_height-32, "[START] BATTLE", c_white, c_black, startScale, startScale, 0)
	// Start game
	if inputCheckPressed(0, INPUT.START, inputCreate(0)) {
		room_change_swipe(room0)
	}
} else {
	startScale = 0;
}

draw_text_outlined(room_width/2, 32, "BATTLE MODE", c_white, c_black, 2, 2, 0)

newInputListen();


//instance_create_layer(0, 0, "META", obj_playerHandler);
//instance_create_layer(0, 0, "META", input);

players = [];

for (var _i=0; _i<4; _i++) {
	arrowL[_i] = 0;
	arrowR[_i] = 0;
	
	playerReady[_i] = false;
	
	shipRot[_i] = 90;
	shipXOff[_i] = 0;
	shipScale[_i] = 2;
	
	buttonA[_i] = 1;
}

startScale = 0;

allReady = false;

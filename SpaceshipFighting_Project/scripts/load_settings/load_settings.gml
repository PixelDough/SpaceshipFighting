
ini_open("Settings.ini");
	
	global.musicEnabled = ini_read_real("SETTINGS", "MUSIC", true);
	
ini_close();

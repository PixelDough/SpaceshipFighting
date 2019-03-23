/// @arg MODE

var _mode = argument0;

switch (_mode) {
	
	default:
		var _laser = instance_create_depth(x, y, depth+10, obj_laser);
		_laser.creator = id;
		_laser.height = height;
		_laser.dir = dir;
		_laser.sprite_index = laser_type;
		alarm[0] = 45;
	break;
	case MODES.RAPID_FIRE:
		var _laser = instance_create_depth(x, y, depth+10, obj_laser);
		_laser.creator = id;
		_laser.height = height;
		_laser.dir = dir;
		_laser.sprite_index = laser_type;
		alarm[0] = 10;
	break;
	
	case MODES.TAG:
		audio_play_sound(snd_error, 100, false);
		alarm[0] = 45;
	break;
	
}

//var _l = instance_create_depth(x, y, depth-10, obj_laserBlast);
//_l.creator = id;

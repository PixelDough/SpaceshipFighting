
depth = -bbox_top;

with obj_ship {
	if id != other.creator and distance_to_object(other) < 64 {
		other.dir = angle_approach(other.dir, point_direction(other.x, other.y, x, y), 2)
	}
}

event_user(ACTION);

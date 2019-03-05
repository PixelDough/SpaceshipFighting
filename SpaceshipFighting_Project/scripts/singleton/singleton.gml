
if instance_number(object_index) > 1 {
	instance_destroy(self);
	return false;
}
return true;
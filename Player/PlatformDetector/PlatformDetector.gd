extends Area

func exists() -> bool:
	return !get_overlapping_bodies().empty();

func get_platform():
	return get_overlapping_bodies()[0];
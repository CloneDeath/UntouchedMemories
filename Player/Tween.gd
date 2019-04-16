extends Tween

func move(dt):
	var player = get_parent();
	self.remove_all();
	self.interpolate_property(player, "translation", 
							  player.translation, 
							  player.translation + dt, 
							  0.1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT);
	self.start();

func is_moving():
	return self.is_active();
extends StaticBody

func kill():
	self.collision_mask = 0;
	$Animation.play("kill");
	
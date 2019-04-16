extends StaticBody

func kill():
	self.collision_layer = 0;
	$Animation.play("kill");
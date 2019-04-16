extends Spatial

func _process(_delta):
	if ($Tween.is_moving()): return;
	if $Right.exists() && Input.is_action_just_pressed("move_right"):
		move(Vector3.RIGHT);
	if $Left.exists() && Input.is_action_just_pressed("move_left"):
		move(Vector3.LEFT);
	if $Up.exists() && Input.is_action_just_pressed("move_up"):
		move(Vector3.FORWARD);
	if $Down.exists() && Input.is_action_just_pressed("move_down"):
		move(Vector3.BACK);

func move(dt):
	$Current.get_platform().kill();
	$Tween.move(dt);
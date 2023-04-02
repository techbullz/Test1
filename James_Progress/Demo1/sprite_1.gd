extends Sprite2D
var angular_speed = PI
var speed = 400

func _process(delta):
	var direction = 0

	# The direction conditions to make the sprite move left & right
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1

	rotation += angular_speed * direction * delta
	
	var velocity = Vector2.ZERO

	# The velocity conditions to make the sprite move up & down
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.DOWN.rotated(rotation) * speed
		
	position += velocity * delta

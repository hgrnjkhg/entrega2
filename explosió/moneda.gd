extends Sprite2D

var explosio : PackedScene

func _ready() -> void:
	await get_tree().create_timer(1.0).timeout
	kill()
	
func kill():
	var _particle = explosio.get_instance_id()
	_particle.position = global_position
	_particle.rotation = global_rotation
	_particle.emitting = true
	get_tree().current_scene.add_child(_particle)
	
	queue_free()

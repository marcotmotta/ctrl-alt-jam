extends Area3D

var attack_sound_scene = preload("res://Abilities/AttackSound.tscn")
var sound = preload("res://SFX/Skills/Skill archer/Skill-archer.wav")

var direction = Vector3.FORWARD
var speed = 45
var damage = 5
var ally
var pos

func _ready():
	global_position = pos
	var attack_sound_instance = attack_sound_scene.instantiate()
	attack_sound_instance.stream = sound
	attack_sound_instance.volume_db = -10
	attack_sound_instance.pos = global_position
	get_parent().add_child(attack_sound_instance)

func _process(delta):
	global_position += direction * speed * delta

func _on_body_entered(body):
	if not body.is_in_group(ally):
		queue_free()

func _on_expiration_timeout():
	queue_free()

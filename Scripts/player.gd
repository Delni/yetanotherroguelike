extends Node2D

@onready var tile_map = $TileMap
const TILE_SIZE = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	var size = get_viewport().get_visible_rect().size
	position = Vector2i(size.x -TILE_SIZE, size.y - TILE_SIZE) / 2
	tile_map.set_cell(0, Vector2i(0,0), 0, Vector2i(0,1))
	print(position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	var new_pos = Vector2.ZERO
	if event.is_action_pressed("left"):
		new_pos.x -= 1
	elif event.is_action_pressed("right"):
		new_pos.x += 1
	elif event.is_action_pressed("up"):
		new_pos.y -= 1
	elif event.is_action_pressed("down"):
		new_pos.y += 1
	position += new_pos * TILE_SIZE

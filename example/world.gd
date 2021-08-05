extends Node2D

var scene1 = preload("scene1.tscn")
var scene2 = preload("scene2.tscn")
var scene3 = preload("scene3.tscn")


func _ready():
	var time_begin
	# init switcher with path of this node, /root/Main/World, switcher will manipulate child nodes 
	# time_begin = OS.get_ticks_usec()
	# var sw = Utils.get_scene_switcher(get_path())
	# print((OS.get_ticks_usec() - time_begin)/1000000.0)
	# var s = Utils.get_scene_switcher("/root")
	# an instance of scene1 will already be in the tree and visible, as you can see in the editor,
	# it will also be tracked, it can be referred to with the integer 1

	var s = scene1.instance()
	var n = Node2D.new()
	var n1 = Node2D.new()

	s.add_child(n)
	n.add_child(n1)
	n.owner = s
	n1.owner = s
	add_child(s)

	
	var scene = PackedScene.new()
	# Only `node` and `rigid` are now packed.
	var result = scene.pack(s)
	if result == OK:
		var error = ResourceSaver.save("res://test.scn", scene)  # Or "user://..."
		if error != OK:
			push_error("An error occurred while saving the scene to disk.")


	# time_begin = OS.get_ticks_usec()
	# for i in range(20000):
	# 	add_child(scene1.instance())
	# print((OS.get_ticks_usec() - time_begin)/1000000.0)
	 
	# time_begin = OS.get_ticks_usec()
	# for i in range(10000):
	# sw.add_scene(scene1)
	# remove_child(sw._scenes[1])
	# print(sw)
	# print(OS.get_ticks_usec() - time_begin/100000.0)
	#  
	# time_begin = OS.get_ticks_usec()
	# for i in range(1,10001):
	# 	sw.remove_scene(i, 0)
	# print(OS.get_ticks_usec() - time_begin/100000.0)

	# time_begin = OS.get_ticks_usec()
	# var sw1 = Utils.get_scene_switcher(get_path(), true)
	# print((OS.get_ticks_usec() - time_begin)/1000000.0)

	# time_begin = OS.get_ticks_usec()
	# for i in range(10000):
	# 	add_child(scene1.instance())
	# print((OS.get_ticks_usec() - time_begin)/1000000.0)
	# time_begin = OS.get_ticks_usec()
	# for i in range(10000):
	# 	sw1.add_scene(scene1, 0, sw1.count)
	# print((OS.get_ticks_usec() - time_begin)/1000000.0)
	# 
	# time_begin = OS.get_ticks_usec()
	# for i in range(1,10001):
	# 	sw1.remove_scene(i, 0)
	# print((OS.get_ticks_usec() - time_begin)/1000000.0)

	# time_begin = OS.get_ticks_usec()
	# for i in get_children():
	# 	i.free()
	# print((OS.get_ticks_usec() - time_begin)/1000000.0)

	# time_begin = OS.get_ticks_usec()
	# print(sw1._scenes)
	# print((OS.get_ticks_usec() - time_begin)/1000000.0)

	# time_begin = OS.get_ticks_usec()
	# for i in range(10000):
	# 	sw1.add_scene(scene1, 0, sw.count)
	# print(OS.get_ticks_usec() - time_begin/100000.0)
	# 
	# time_begin = OS.get_ticks_usec()
	# for i in range(10000):
	# 	add_child(scene1.instance())
	# print(OS.get_ticks_usec() - time_begin/100000.0)

	# print_debug(sw)
	# 
	# # add instance of scene2 to tree but hide it and name it "b" for later reference
	# sw.add_scene(scene2, sw.HIDDEN, "b")
	# 
	# yield(get_tree().create_timer(2.0), "timeout")
	# # sets hidden scene "b" to visible and frees the instance of scene1 in the tree, 
	# # this instance is no longer tracked since its dead
	# sw.switch_scene("b")
	# print_debug(sw)
	# print_debug("with sync:\n", sw1)
	# 
	# yield(get_tree().create_timer(2.0), "timeout")
	# # add scene3 to tree and hide it and name it "c"
	# sw.add_scene(scene3, sw.HIDDEN, "c")
	# # instance scene1 again and add it to the tree visible,
	# # also remove "b" from the tree, its still in memory
	# sw.switch_new_scene(scene1, "a", "b", sw.ACTIVE, sw.STOPPED)
	# print_debug(sw)
	# print_debug("with sync:\n", sw1)
	# 
	# yield(get_tree().create_timer(2.0), "timeout")
	# # reattach "b" to scene tree
	# sw.show_scene("b")
	# 
	# # make "c" visible
	# sw.show_scene("c")
	# print_debug(sw)
	# print_debug("with sync:\n", sw1)
	# sw1.show_scene(2)
	# print_debug("with sync:\n", sw1)
	# # 
	# # s.add_scene(scene3)
	# 
	# # print_debug(sw)
	# # var a = scene1.instance()
	# # add_child(a)
	# # print_debug(sw)
	# # # remove_child(a)
	# # # print_debug(sw)
	# # a.free()
	# # yield(get_tree().create_timer(1.0), "timeout")
	# # print_debug(sw)
	# # sw.show_scene(2)
	# # print_debug(sw)
	# # print_debug(s)

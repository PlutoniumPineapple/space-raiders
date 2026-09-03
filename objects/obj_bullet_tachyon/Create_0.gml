if instance_exists(obj_player)
goal_dir = point_direction(x, y, obj_player.xprevious, obj_player.yprevious)
else
goal_dir = noone
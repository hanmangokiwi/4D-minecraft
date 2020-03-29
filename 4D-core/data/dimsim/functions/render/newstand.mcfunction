execute store result entity @s Pose.Head[0] float 0.001 run scoreboard players get x rotate
execute store result entity @s Pose.Head[1] float -0.001 run scoreboard players get y rotate
execute store result entity @s Pose.Head[2] float -0.001 run scoreboard players get z rotate

tag @s remove newstand
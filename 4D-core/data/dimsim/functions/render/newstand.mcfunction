#scoreboard players operation x totrot = x rotate
#scoreboard players operation y totrot = y rotate
#scoreboard players operation z totrot = z rotate

#scoreboard players operation x totrot += xw rotate
#scoreboard players operation y totrot -= yw rotate
#scoreboard players operation x totrot += zw rotate






execute store result entity @s Pose.Head[0] float 0.001 run scoreboard players get z standrotation
execute store result entity @s Pose.Head[1] float 0.001 run scoreboard players get y standrotation
execute store result entity @s Pose.Head[2] float 0.001 run scoreboard players get x standrotation

tag @s remove newstand
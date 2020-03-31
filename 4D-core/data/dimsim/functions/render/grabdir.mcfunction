teleport @s ~ ~ ~ facing entity @e[type=area_effect_cloud,tag=point1,limit=1]
execute store result score y standrotation run data get entity @s Rotation[0] 1000

execute store result score z standrotation run data get entity @s Rotation[1] 1000
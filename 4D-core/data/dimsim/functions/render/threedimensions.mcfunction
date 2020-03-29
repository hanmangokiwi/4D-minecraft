#function dimsim:render/4dperspective






execute store result entity @s Pos[0] double 0.000000625 run scoreboard players get @s x
execute store result entity @s Pos[1] double 0.000000625 run scoreboard players get @s y
execute store result entity @s Pos[2] double 0.000000625 run scoreboard players get @s z









execute at @s run summon armor_stand ~0.5 ~20 ~0.5 {Pose:{Head:[0.0f,0.0f,0.1f]},Invisible:1,Marker:1,NoGravity:1,Tags:[displaystand,newstand]}
scoreboard players operation @e[type=armor_stand,tag=newstand] blocktype = @s blocktype
execute as @e[type=armor_stand,tag=newstand] at @s run function dimsim:render/newstand
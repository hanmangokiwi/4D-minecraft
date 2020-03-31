execute store result entity @s Pos[0] double 0.000000625 run scoreboard players get @s xdisplay
execute store result entity @s Pos[1] double 0.000000625 run scoreboard players get @s ydisplay
execute store result entity @s Pos[2] double 0.000000625 run scoreboard players get @s zdisplay


execute at @s run summon armor_stand ~0.5 ~18.8 ~0.5 {Pose:{Head:[0.0f,0.0f,0.1f]},Invisible:1,Marker:1,NoGravity:1,Tags:[displaystand,newstand]}
scoreboard players operation @e[type=armor_stand,tag=newstand] blocktype = @s blocktype
execute as @e[type=armor_stand,tag=newstand] at @s run function dimsim:render/newstand
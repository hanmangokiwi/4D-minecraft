execute store result entity @s Pos[0] double 0.000001 run scoreboard players get @s x
execute store result entity @s Pos[1] double 0.000001 run scoreboard players get @s y
execute store result entity @s Pos[2] double 0.000001 run scoreboard players get @s z
execute at @s run summon falling_block ~0.5 ~20 ~0.5 {BlockState:{Name:"minecraft:diamond_block"},NoGravity:1,Tags:[DisplaySand]}
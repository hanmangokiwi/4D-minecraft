scoreboard players operation tx calculations = @s x
scoreboard players operation ty calculations = @s y
scoreboard players operation tz calculations = @s z
scoreboard players operation tw calculations = @s w
scoreboard players operation tb calculations = @s blocktype
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[dot,newDot]}
execute as @e[type=area_effect_cloud,tag=newDot] run function dimsim:rotate/copypremade2
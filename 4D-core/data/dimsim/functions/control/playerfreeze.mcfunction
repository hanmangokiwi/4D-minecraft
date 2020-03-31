tp @s @s
summon area_effect_cloud ~ ~ ~ {Tags:[dircheck,playermarker,newplayermarker],Duration:2147483647}
execute as @e[type=area_effect_cloud,tag=newplayermarker] at @s run function dimsim:control/playermarkersetup
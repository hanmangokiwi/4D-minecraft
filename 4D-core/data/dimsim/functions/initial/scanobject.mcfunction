summon minecraft:area_effect_cloud 41 5 -54 {Tags:[scanner],Duration:1}

execute as @e[type=area_effect_cloud,tag=scanner] at @s run function dimsim:initial/scanstart
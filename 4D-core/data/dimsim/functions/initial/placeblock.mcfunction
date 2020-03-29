summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[point,newpoint]}
execute as @e[type=area_effect_cloud,tag=newpoint] at @s run function dimsim:initial/pointsetup
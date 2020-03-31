execute as @e[type=area_effect_cloud,tag=playermarker,limit=1,sort=nearest] at @s run function dimsim:control/controllerdetect

tag @e[type=area_effect_cloud,tag=dircheck] remove thisone
tag @e[type=area_effect_cloud,tag=dircheck,limit=1,sort=nearest] add thisone
scoreboard players set @s direction 0
execute if entity @e[type=area_effect_cloud,tag=thisone,tag=front] run scoreboard players set @s direction 1
execute if entity @e[type=area_effect_cloud,tag=thisone,tag=right] run scoreboard players set @s direction 2
execute if entity @e[type=area_effect_cloud,tag=thisone,tag=left] run scoreboard players set @s direction 3

execute if entity @e[type=area_effect_cloud,tag=thisone,tag=back] run scoreboard players set @s direction 4
execute if entity @e[type=area_effect_cloud,tag=thisone,tag=up] run scoreboard players set @s direction 5
execute if entity @e[type=area_effect_cloud,tag=thisone,tag=down] run scoreboard players set @s direction 6


execute unless score @s direction matches 0 if score render calculations matches 2 run particle dust 1.000 1.000 1.000 1 ~ ~20 ~ 0.000 0.000 0.000 0 10000 force

execute unless score @s direction matches 0 run tp @s @e[type=area_effect_cloud,tag=playermarker,limit=1,sort=nearest]

execute if score @s direction matches 0 run tp @e[type=area_effect_cloud,tag=playermarker,limit=1,sort=nearest] @s
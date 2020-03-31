kill @e[type=area_effect_cloud,tag=point]
summon minecraft:area_effect_cloud 41 5 -54 {Tags:[scanner],Duration:1}



execute as @e[type=area_effect_cloud,tag=scanner] at @s run function dimsim:initial/scanstart


execute unless entity @e[type=area_effect_cloud,tag=point,tag=!detectionpoints,scores={x=-5,y=4,z=-5,w=-5}] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[point,point0,detectionpoints]}

execute unless entity @e[type=area_effect_cloud,tag=point,tag=!detectionpoints,scores={x=4,y=4,z=-5,w=-5}] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[point,point1,detectionpoints]}

execute unless entity @e[type=area_effect_cloud,tag=point,tag=!detectionpoints,scores={x=-5,y=4,z=4,w=-5}] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[point,point2,detectionpoints]}

execute unless entity @e[type=area_effect_cloud,tag=point,tag=!detectionpoints,scores={x=4,y=-5,z=4,w=4}] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[point,point3,detectionpoints]}


scoreboard players set @e[type=area_effect_cloud,tag=detectionpoints] w -5
scoreboard players set @e[type=area_effect_cloud,tag=detectionpoints] y 4

scoreboard players set @e[type=area_effect_cloud,tag=point0] x -5
scoreboard players set @e[type=area_effect_cloud,tag=point0] z -5

scoreboard players set @e[type=area_effect_cloud,tag=point1] x 4
scoreboard players set @e[type=area_effect_cloud,tag=point1] z -5

scoreboard players set @e[type=area_effect_cloud,tag=point2] x -5
scoreboard players set @e[type=area_effect_cloud,tag=point2] z 4


scoreboard players set @e[type=area_effect_cloud,tag=point3] x 4
scoreboard players set @e[type=area_effect_cloud,tag=point3] y -5
scoreboard players set @e[type=area_effect_cloud,tag=point3] z 4
scoreboard players set @e[type=area_effect_cloud,tag=point3] w 4

tag @e[type=area_effect_cloud,tag=detectionpoints] remove point0
tag @e[type=area_effect_cloud,tag=detectionpoints] remove point1
tag @e[type=area_effect_cloud,tag=detectionpoints] remove point2
tag @e[type=area_effect_cloud,tag=detectionpoints] remove point3
tag @e[type=area_effect_cloud,tag=detectionpoints] remove detectionpoints




execute as @e[type=area_effect_cloud,tag=point] at @s run function dimsim:initial/decimalize
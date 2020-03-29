kill @e[type=armor_stand,tag=standdone]



replaceitem entity @e[type=armor_stand,tag=displaystand,tag=!standdone] armor.head minecraft:diamond_block
tag @e[type=armor_stand,tag=displaystand,tag=!standdone] add standdone


execute as @e[type=area_effect_cloud,tag=point] at @s run function dimsim:render/threedimensions
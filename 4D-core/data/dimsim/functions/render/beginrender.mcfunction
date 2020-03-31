execute as @e[type=armor_stand,tag=displaystand,tag=!newstand] run function dimsim:render/stand


execute if score render calculations matches 1 run fill -10 10 -10 10 30 10 air


execute if score render calculations matches 0 run function dimsim:render/standrotation 







execute as @e[type=area_effect_cloud,tag=dot] at @s run function dimsim:render/threedimensions
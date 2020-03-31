scoreboard players set distance distance 0
scoreboard players operation td01 calculations = @e[type=area_effect_cloud,tag=point0] x
scoreboard players operation td02 calculations = @e[type=area_effect_cloud,tag=point0] y
scoreboard players operation td03 calculations = @e[type=area_effect_cloud,tag=point0] z
scoreboard players operation td04 calculations = @e[type=area_effect_cloud,tag=point0] w

scoreboard players operation td11 calculations = @e[type=area_effect_cloud,tag=point3] x
scoreboard players operation td12 calculations = @e[type=area_effect_cloud,tag=point3] y
scoreboard players operation td13 calculations = @e[type=area_effect_cloud,tag=point3] z
scoreboard players operation td14 calculations = @e[type=area_effect_cloud,tag=point3] w

scoreboard players operation temp calculations = td01 calculations
scoreboard players operation temp calculations -= td11 calculations
scoreboard players operation temp2 calculations = temp calculations
scoreboard players operation temp2 calculations /= 100000 constant
scoreboard players operation temp calculations *= temp2 calculations
scoreboard players operation temp calculations /= 10 constant
scoreboard players operation distance distance += temp calculations

scoreboard players operation temp calculations = td02 calculations
scoreboard players operation temp calculations -= td12 calculations
scoreboard players operation temp2 calculations = temp calculations
scoreboard players operation temp2 calculations /= 100000 constant
scoreboard players operation temp calculations *= temp2 calculations
scoreboard players operation temp calculations /= 10 constant
scoreboard players operation distance distance += temp calculations

scoreboard players operation temp calculations = td03 calculations
scoreboard players operation temp calculations -= td13 calculations
scoreboard players operation temp2 calculations = temp calculations
scoreboard players operation temp2 calculations /= 100000 constant
scoreboard players operation temp calculations *= temp2 calculations
scoreboard players operation temp calculations /= 10 constant
scoreboard players operation distance distance += temp calculations

scoreboard players operation temp calculations = td04 calculations
scoreboard players operation temp calculations -= td14 calculations
scoreboard players operation temp2 calculations = temp calculations
scoreboard players operation temp2 calculations /= 100000 constant
scoreboard players operation temp calculations *= temp2 calculations
scoreboard players operation temp calculations /= 10 constant
scoreboard players operation distance distance += temp calculations
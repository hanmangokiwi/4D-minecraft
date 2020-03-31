scoreboard players operation result calculations = t1 calculations
scoreboard players operation result calculations /= 10 constant
scoreboard players operation result calculations *= t2 calculations
scoreboard players operation result calculations /= 100 constant

execute if score distance distance <= distance constant run scoreboard players operation t1 calculations = result calculations

execute if score distance distance <= distance constant run scoreboard players operation t1 calculations /= 1000 constant
execute if score distance distance <= distance constant run scoreboard players operation result calculations += t1 calculations
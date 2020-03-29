execute store result score negsin calculations run data get entity @s Pos[0] 1000
execute store result score sin calculations run data get entity @s Pos[0] -1000
execute store result score cos calculations run data get entity @s Pos[2] 1000

execute if score cos calculations matches 100000 run scoreboard players set sin calculations 0
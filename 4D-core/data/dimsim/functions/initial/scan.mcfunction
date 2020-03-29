execute at @s unless block ~ ~ ~ minecraft:air run function dimsim:initial/placeblock

scoreboard players add scanner x 1
execute at @s run tp @s ~1 ~ ~

execute at @s if score scanner x matches 5 run function dimsim:initial/addy

execute at @s if score scanner y matches 5 run function dimsim:initial/addz

execute at @s if score scanner z matches 5 run function dimsim:initial/addw

execute at @s if score scanner w matches 5 run kill @s
execute unless score scanner w matches 5 run function dimsim:initial/scan

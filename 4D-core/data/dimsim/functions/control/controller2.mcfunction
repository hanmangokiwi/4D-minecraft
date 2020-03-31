title @s actionbar [{"text":"Rotate 4D: ","color":"blue","bold":"true"},{"text":"xy, yz, xz plane","color":"green"}]

function dimsim:control/addcontrollercheck
function dimsim:control/grabdirection


execute if score @s direction matches 5 run scoreboard players remove xz rotate 10000
execute if score @s direction matches 6 run scoreboard players add xz rotate 10000


execute if entity @s[y_rotation=225..305] if score @s direction matches 1 run scoreboard players remove yz rotate 10000
execute if entity @s[y_rotation=225..305] if score @s direction matches 4 run scoreboard players add yz rotate 10000
execute if entity @s[y_rotation=225..305] if score @s direction matches 2 run scoreboard players remove xy rotate 10000
execute if entity @s[y_rotation=225..305] if score @s direction matches 3 run scoreboard players add xy rotate 10000

execute if entity @s[y_rotation=-45..45] if score @s direction matches 1 run scoreboard players remove xy rotate 10000
execute if entity @s[y_rotation=-45..45] if score @s direction matches 4 run scoreboard players add xy rotate 10000
execute if entity @s[y_rotation=-45..45] if score @s direction matches 2 run scoreboard players add yz rotate 10000
execute if entity @s[y_rotation=-45..45] if score @s direction matches 3 run scoreboard players remove yz rotate 10000

execute if entity @s[y_rotation=45..135] if score @s direction matches 1 run scoreboard players add yz rotate 10000
execute if entity @s[y_rotation=45..135] if score @s direction matches 4 run scoreboard players remove yz rotate 10000
execute if entity @s[y_rotation=45..135] if score @s direction matches 2 run scoreboard players add xy rotate 10000
execute if entity @s[y_rotation=45..135] if score @s direction matches 3 run scoreboard players remove xy rotate 10000

execute if entity @s[y_rotation=135..225] if score @s direction matches 1 run scoreboard players add xy rotate 10000
execute if entity @s[y_rotation=135..225] if score @s direction matches 4 run scoreboard players remove xy rotate 10000
execute if entity @s[y_rotation=135..225] if score @s direction matches 2 run scoreboard players remove yz rotate 10000
execute if entity @s[y_rotation=135..225] if score @s direction matches 3 run scoreboard players add yz rotate 10000

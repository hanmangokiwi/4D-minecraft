title @s actionbar [{"text":"Rotate 3D: ","color":"blue","bold":"true"},{"text":"x, y, z axis","color":"yellow"}]

function dimsim:control/addcontrollercheck
function dimsim:control/grabdirection

execute if entity @s[y_rotation=225..305] if score @s direction matches 1 run scoreboard players remove z rotate 10000
execute if entity @s[y_rotation=225..305] if score @s direction matches 4 run scoreboard players add z rotate 10000
execute if entity @s[y_rotation=225..305] if score @s direction matches 2 run scoreboard players add y rotate 10000
execute if entity @s[y_rotation=225..305] if score @s direction matches 3 run scoreboard players remove y rotate 10000
execute if entity @s[y_rotation=225..305] if score @s direction matches 5 run scoreboard players add x rotate 10000
execute if entity @s[y_rotation=225..305] if score @s direction matches 6 run scoreboard players remove x rotate 10000

execute if entity @s[y_rotation=-45..45] if score @s direction matches 1 run scoreboard players add x rotate 10000
execute if entity @s[y_rotation=-45..45] if score @s direction matches 4 run scoreboard players remove x rotate 10000
execute if entity @s[y_rotation=-45..45] if score @s direction matches 2 run scoreboard players add y rotate 10000
execute if entity @s[y_rotation=-45..45] if score @s direction matches 3 run scoreboard players remove y rotate 10000
execute if entity @s[y_rotation=-45..45] if score @s direction matches 5 run scoreboard players add z rotate 10000
execute if entity @s[y_rotation=-45..45] if score @s direction matches 6 run scoreboard players remove z rotate 10000

execute if entity @s[y_rotation=45..135] if score @s direction matches 1 run scoreboard players add z rotate 10000
execute if entity @s[y_rotation=45..135] if score @s direction matches 4 run scoreboard players remove z rotate 10000
execute if entity @s[y_rotation=45..135] if score @s direction matches 2 run scoreboard players add y rotate 10000
execute if entity @s[y_rotation=45..135] if score @s direction matches 3 run scoreboard players remove y rotate 10000
execute if entity @s[y_rotation=45..135] if score @s direction matches 5 run scoreboard players remove x rotate 10000
execute if entity @s[y_rotation=45..135] if score @s direction matches 6 run scoreboard players add x rotate 10000

execute if entity @s[y_rotation=135..225] if score @s direction matches 1 run scoreboard players remove x rotate 10000
execute if entity @s[y_rotation=135..225] if score @s direction matches 4 run scoreboard players add x rotate 10000
execute if entity @s[y_rotation=135..225] if score @s direction matches 2 run scoreboard players add y rotate 10000
execute if entity @s[y_rotation=135..225] if score @s direction matches 3 run scoreboard players remove y rotate 10000
execute if entity @s[y_rotation=135..225] if score @s direction matches 5 run scoreboard players remove z rotate 10000
execute if entity @s[y_rotation=135..225] if score @s direction matches 6 run scoreboard players add z rotate 10000
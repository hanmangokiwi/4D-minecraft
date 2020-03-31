title @s actionbar [{"text":"Rotate 4D: ","color":"blue","bold":"true"},{"text":"xw, yw, zw plane","color":"light_purple"}]

function dimsim:control/addcontrollercheck
function dimsim:control/grabdirection

#execute if score @s direction matches 1 run scoreboard players add xw rotate 10000
#execute if score @s direction matches 4 run scoreboard players remove xw rotate 10000
#execute if score @s direction matches 2 run scoreboard players remove yw rotate 10000
#execute if score @s direction matches 3 run scoreboard players add yw rotate 10000
#execute if score @s direction matches 5 run scoreboard players add zw rotate 10000
#execute if score @s direction matches 6 run scoreboard players remove zw rotate 10000

#hey you! you snooping through my messy code. I know that this actually isnt rotating by the xw yw and zw planes but the thing is its literally the same thing as rotating by xyz so to save some computing power im not gonna do it.



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
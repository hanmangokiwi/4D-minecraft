title @s actionbar [{"text":"Rotate 4D: ","color":"blue","bold":"true"},{"text":"xw, yw, zw plane","color":"light_purple"}]

function dimsim:control/addcontrollercheck
function dimsim:control/grabdirection

execute if score @s direction matches 1 run scoreboard players add xw rotate 10000
execute if score @s direction matches 4 run scoreboard players remove xw rotate 10000
execute if score @s direction matches 2 run scoreboard players remove yw rotate 10000
execute if score @s direction matches 3 run scoreboard players add yw rotate 10000
execute if score @s direction matches 5 run scoreboard players add zw rotate 10000
execute if score @s direction matches 6 run scoreboard players remove zw rotate 10000
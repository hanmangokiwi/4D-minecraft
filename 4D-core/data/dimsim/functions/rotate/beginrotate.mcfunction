kill @e[type=area_effect_cloud,tag=dot]
execute as @e[type=area_effect_cloud,tag=point] run function dimsim:rotate/copypremade

scoreboard players operation x rotate %= 360000 constant
scoreboard players operation y rotate %= 360000 constant
scoreboard players operation z rotate %= 360000 constant

scoreboard players operation xy rotate %= 360000 constant
scoreboard players operation xz rotate %= 360000 constant
scoreboard players operation xw rotate %= 360000 constant
scoreboard players operation yz rotate %= 360000 constant
scoreboard players operation yw rotate %= 360000 constant
scoreboard players operation zw rotate %= 360000 constant

execute as @e[type=area_effect_cloud,tag=dot] run function dimsim:rotate/matrix
function dimsim:render/beginrender
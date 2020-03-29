scoreboard players set clock calculations 0


#function dimsim:initial/scanobject

scoreboard players operation x rotate %= 360000 constant
scoreboard players operation y rotate %= 360000 constant
scoreboard players operation z rotate %= 360000 constant

execute as @e[type=area_effect_cloud,tag=point] run function dimsim:rotate/matrix
function dimsim:render/beginrender
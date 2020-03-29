function dimsim:initial/scanobject


execute as @e[type=area_effect_cloud,tag=point] run function dimsim:rotate/matrix
function dimsim:render/beginrender
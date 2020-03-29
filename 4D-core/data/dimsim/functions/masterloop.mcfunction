scoreboard players add clock calculations 1
execute if score clock calculations >= 2 constant run function dimsim:rotate/beginrotate


scoreboard players operation x rotate += x rotatevelocity
scoreboard players operation y rotate += y rotatevelocity
scoreboard players operation z rotate += z rotatevelocity
function dimsim:rotate/beginrotate


scoreboard players operation x rotate += x rotatevelocity
scoreboard players operation y rotate += y rotatevelocity
scoreboard players operation z rotate += z rotatevelocity

scoreboard players operation xy rotate += xy rotatevelocity
scoreboard players operation xz rotate += xz rotatevelocity
scoreboard players operation xw rotate += xw rotatevelocity
scoreboard players operation yz rotate += yz rotatevelocity
scoreboard players operation yw rotate += yw rotatevelocity
scoreboard players operation zw rotate += zw rotatevelocity
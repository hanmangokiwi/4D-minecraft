scoreboard players operation rotate calculations = xz rotate
function dimsim:rotate/gettrig

# matrix xz (xz)
#nothing

# matrix y (ycos-wsin)
scoreboard players operation t1 calculations = @s y
scoreboard players operation t2 calculations = cos calculations
function dimsim:math/skmultiplication
scoreboard players operation t3 calculations = result calculations
scoreboard players operation t1 calculations = @s w
scoreboard players operation t2 calculations = negsin calculations
function dimsim:math/skmultiplication
scoreboard players operation t3 calculations += result calculations




# matrix w (ysin+wcos)
scoreboard players operation t1 calculations = @s y
scoreboard players operation t2 calculations = sin calculations
function dimsim:math/skmultiplication
scoreboard players operation t4 calculations = result calculations
scoreboard players operation t1 calculations = @s w
scoreboard players operation t2 calculations = cos calculations
function dimsim:math/skmultiplication
scoreboard players operation t4 calculations += result calculations




scoreboard players operation @s y = t3 calculations
scoreboard players operation @s w = t4 calculations
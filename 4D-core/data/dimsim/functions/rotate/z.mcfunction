scoreboard players operation rotate calculations = z rotate
function dimsim:rotate/gettrig




# matrix x (xcos-ysin)
scoreboard players operation t1 calculations = @s x
scoreboard players operation t2 calculations = cos calculations
function dimsim:math/skmultiplication
scoreboard players operation t3 calculations = result calculations
scoreboard players operation t1 calculations = @s y
scoreboard players operation t2 calculations = negsin calculations
function dimsim:math/skmultiplication
scoreboard players operation t3 calculations += result calculations




# matrix y (xsin+ycos)
scoreboard players operation t1 calculations = @s x
scoreboard players operation t2 calculations = sin calculations
function dimsim:math/skmultiplication
scoreboard players operation t4 calculations = result calculations
scoreboard players operation t1 calculations = @s y
scoreboard players operation t2 calculations = cos calculations
function dimsim:math/skmultiplication
scoreboard players operation t4 calculations += result calculations

# matrix z (z)
#nothing

scoreboard players operation @s x = t3 calculations
scoreboard players operation @s y = t4 calculations
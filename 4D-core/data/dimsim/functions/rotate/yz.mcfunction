scoreboard players operation rotate calculations = yz rotate
function dimsim:rotate/gettrig

# matrix yz (yz)
#nothing

# matrix x (xcos-wsin)
scoreboard players operation t1 calculations = @s x
scoreboard players operation t2 calculations = cos calculations
function dimsim:math/skmultiplication
scoreboard players operation t3 calculations = result calculations
scoreboard players operation t1 calculations = @s w
scoreboard players operation t2 calculations = negsin calculations
function dimsim:math/skmultiplication
scoreboard players operation t3 calculations += result calculations




# matrix w (xsin+wcos)
scoreboard players operation t1 calculations = @s x
scoreboard players operation t2 calculations = sin calculations
function dimsim:math/skmultiplication
scoreboard players operation t4 calculations = result calculations
scoreboard players operation t1 calculations = @s w
scoreboard players operation t2 calculations = cos calculations
function dimsim:math/skmultiplication
scoreboard players operation t4 calculations += result calculations




scoreboard players operation @s x = t3 calculations
scoreboard players operation @s w = t4 calculations
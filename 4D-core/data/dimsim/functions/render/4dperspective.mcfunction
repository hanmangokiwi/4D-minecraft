scoreboard players operation wscale calculations = @s w
execute if score wscale calculations <= -1 constant run scoreboard players operation wscale calculations *= -1 constant
scoreboard players operation wscale calculations /= 10000 constant

scoreboard players operation @s x *= wscale calculations
scoreboard players operation @s y *= wscale calculations
scoreboard players operation @s z *= wscale calculations

scoreboard players operation @s x /= scalefactor constant
scoreboard players operation @s y /= scalefactor constant
scoreboard players operation @s z /= scalefactor constant

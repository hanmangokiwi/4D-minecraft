scoreboard players set wscale calculations 12500000

scoreboard players operation wscale calculations -= @s w

scoreboard players operation wscale calculations /= perspectivescale constant

scoreboard players operation @s xdisplay *= wscale calculations
scoreboard players operation @s ydisplay *= wscale calculations
scoreboard players operation @s zdisplay *= wscale calculations

scoreboard players operation @s xdisplay /= scalefactor constant
scoreboard players operation @s ydisplay /= scalefactor constant
scoreboard players operation @s zdisplay /= scalefactor constant

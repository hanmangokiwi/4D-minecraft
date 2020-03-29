scoreboard players add @s standdelay 1


execute as @s[scores={standdelay=2}] run function dimsim:render/pickblock

replaceitem entity @s[scores={standdelay=3}] armor.head air
kill @s[scores={standdelay=4..}]
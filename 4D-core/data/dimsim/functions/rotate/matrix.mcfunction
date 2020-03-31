execute unless score x rotate matches 0 run function dimsim:rotate/x
execute unless score y rotate matches 0 run function dimsim:rotate/y
execute unless score z rotate matches 0 run function dimsim:rotate/z

execute unless score xy rotate matches 0 run function dimsim:rotate/xy
execute unless score xz rotate matches 0 run function dimsim:rotate/xz
execute unless score yz rotate matches 0 run function dimsim:rotate/yz
#execute unless score xw rotate matches 0 run function dimsim:rotate/xw
#execute unless score yw rotate matches 0 run function dimsim:rotate/yw
#execute unless score zw rotate matches 0 run function dimsim:rotate/zw

#hey you snooping around in my code; i know that xw yw and zw are disabled. It's cause theyre the same thing as xyzs
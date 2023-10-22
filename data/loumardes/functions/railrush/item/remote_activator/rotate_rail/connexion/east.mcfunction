
execute if block ~1 ~ ~ #rails[shape=south_west] run tag @s add connecting_east
execute if block ~1 ~ ~ #rails[shape=north_west] run tag @s add connecting_east
execute if block ~1 ~ ~ #rails[shape=east_west] run tag @s add connecting_east
execute if block ~1 ~ ~ #rails[shape=ascending_east] run tag @s add connecting_east

execute if block ~1 ~-1 ~ #rails[shape=ascending_west] run tag @s add connecting_east

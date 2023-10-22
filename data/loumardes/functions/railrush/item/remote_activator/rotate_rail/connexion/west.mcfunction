
execute if block ~-1 ~ ~ #rails[shape=south_east] run tag @s add connecting_west
execute if block ~-1 ~ ~ #rails[shape=north_east] run tag @s add connecting_west
execute if block ~-1 ~ ~ #rails[shape=east_west] run tag @s add connecting_west
execute if block ~-1 ~ ~ #rails[shape=ascending_west] run tag @s add connecting_west

execute if block ~-1 ~-1 ~ #rails[shape=ascending_east] run tag @s add connecting_west

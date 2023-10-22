
execute if block ~ ~ ~1 #rails[shape=north_west] run tag @s add connecting_south
execute if block ~ ~ ~1 #rails[shape=north_east] run tag @s add connecting_south
execute if block ~ ~ ~1 #rails[shape=north_south] run tag @s add connecting_south
execute if block ~ ~ ~1 #rails[shape=ascending_south] run tag @s add connecting_south

execute if block ~ ~-1 ~1 #rails[shape=ascending_north] run tag @s add connecting_south

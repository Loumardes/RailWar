
#unstick the cart from the rails
tp @s ~ ~1 ~

#store cart velocity
execute store result score @s StoredMotionX run data get entity @s Motion[0] 100000
execute store result score @s StoredMotionZ run data get entity @s Motion[2] 100000

#set velocidy depending on cart current direction
execute if block ~ ~ ~ #rails[shape=north_south] run function loumardes:railrush/item/jump_pad/shape/north_south
execute if block ~ ~ ~ #rails[shape=east_west] run function loumardes:railrush/item/jump_pad/shape/east_west
execute if block ~ ~ ~ #rails[shape=north_east] run function loumardes:railrush/item/jump_pad/shape/north_east
execute if block ~ ~ ~ #rails[shape=south_west] run function loumardes:railrush/item/jump_pad/shape/north_east
execute if block ~ ~ ~ #rails[shape=north_west] run function loumardes:railrush/item/jump_pad/shape/north_west
execute if block ~ ~ ~ #rails[shape=south_east] run function loumardes:railrush/item/jump_pad/shape/north_west

scoreboard players set @s VectorY 1000

data merge entity @s {NoGravity:1b}
tag @s add vector_motion


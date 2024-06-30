
# Clear the area before teleporting players to the lobby (credits to aksiome)
execute as @e[type=marker,tag=placed_blocks] at @s if entity @s[y=309,dy=50] run tp @s ~ 307 ~
execute at @e[type=marker,tag=placed_blocks] run fill ~17 ~12 ~17 ~-17 ~-12 ~-17 air replace #loumardes:railrush/players_blocks
kill @e[type=marker,tag=placed_blocks]

#resets the boats structures
place template loumardes:blue_boat 4988 -13 50
place template loumardes:blue_boat_top 4994 32 59

place template loumardes:red_boat 4988 -13 -94
place template loumardes:red_boat_top 4994 32 -71

#reset the lobby structures
place template loumardes:lobby -42 -2 -22
place template loumardes:start_portal -73 4 -5


#reset sloped starting rail sections and intersection
setblock -21 1 17 minecraft:rail[shape=ascending_south]
setblock -21 1 -17 minecraft:rail[shape=ascending_north]
setblock -7 1 10 minecraft:rail[shape=ascending_east]
setblock -24 1 4 minecraft:rail[shape=ascending_east,waterlogged=false]

setblock 5000 -8 60 minecraft:rail[shape=ascending_south]
setblock 5000 -8 -60 minecraft:rail[shape=ascending_north]

setblock -15 1 0 minecraft:rail[shape=south_east,waterlogged=false]

kill @e[type=command_block_minecart]
execute as @e[type=furnace_minecart,tag=guardian] run function loumardes:railrush/guardian_cart/stack_kill

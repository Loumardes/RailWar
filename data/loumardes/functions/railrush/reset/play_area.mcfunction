
# Clear the area before teleporting players to the lobby (credits to aksiome)
execute as @e[type=marker,tag=placed_blocks] at @s if entity @s[y=309,dy=50] run tp @s ~ 307 ~
execute at @e[type=marker,tag=placed_blocks] run fill ~17 ~12 ~17 ~-17 ~-12 ~-17 air replace #loumardes:railrush/players_blocks
kill @e[type=marker,tag=placed_blocks]

#resets the boats structures
place template loumardes:blue_boat 4988 -13 50
place template loumardes:blue_boat_top 4994 32 59

place template loumardes:red_boat 4988 -13 -94
place template loumardes:red_boat_top 4994 32 -71

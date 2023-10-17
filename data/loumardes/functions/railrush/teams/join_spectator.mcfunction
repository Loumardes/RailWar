
team join spectator @s

#refresh the items for spectator team in the lobby
execute if score GameRunning Constant matches 0 if entity @s[tag=has_sandbox_items] run function loumardes:railrush/item/starting_kit

#if the game is running set gamemode to spectator and tp them to the middle
execute if score GameRunning Constant matches 1 run gamemode spectator @s
execute if score GameRunning Constant matches 1 run tp @a[gamemode=spectator] 5070 1 0 90 ~

tellraw @s[] ["",{"text":"[RW] ","color":"gold"},{"text":"You joined ","color":"gray"},{"text":"Spectators","color":"white"}]

advancement revoke @s only loumardes:zone/join_blue
advancement revoke @s only loumardes:zone/join_red


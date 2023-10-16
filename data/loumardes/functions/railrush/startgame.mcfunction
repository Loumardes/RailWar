scoreboard players set GameRunning Constant 1

scoreboard objectives setdisplay sidebar gold
scoreboard players set Blue gold 0
scoreboard players set Red gold 0
scoreboard players reset Spectators gold
scoreboard players set Blue iron 0
scoreboard players set Red iron 0
scoreboard players set Blue tech 0
scoreboard players set Red tech 0
scoreboard players set Blue tech_requirement 1
scoreboard players set Red tech_requirement 1
scoreboard players set BlueCartCount Variable 1
scoreboard players set RedCartCount Variable 1



#put all players with a team in survival mode and heal them
gamemode survival @a[team=!]
effect give @a instant_health 1 10 false

execute as @a[team=blue] run function loumardes:railrush/teams/join_blue
execute as @a[team=red] run function loumardes:railrush/teams/join_red
execute as @a[team=spectator] run function loumardes:railrush/teams/join_spectator


execute as @a[gamemode=!spectator] run function loumardes:railrush/item/starting_kit


#repair bases
function loumardes:railrush/reset/area
#execute as @e[type=marker,tag=blue_crystal] at @s run function loumardes:railrush/bases/repair_blue_crystal
#execute as @e[type=marker,tag=red_crystal] at @s run function loumardes:railrush/bases/repair_red_crystal

#secure item frames
execute as @e[type=minecraft:item_frame] run data modify entity @s {} merge value {Invulnerable:1,Fixed:1}

kill @e[type=command_block_minecart]
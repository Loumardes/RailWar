scoreboard players set GameRunning Constant 1

scoreboard objectives setdisplay sidebar gold
scoreboard players set Blue gold 0
scoreboard players set Red gold 0
scoreboard players set Blue iron 0
scoreboard players set Red iron 0
scoreboard players set Blue tech 1
scoreboard players set Red tech 1
team join blue Blue
team join red Red
team modify blue color blue
team modify red color red

#moves the players to their spawnpoint and set it
tp @a[team=blue] @e[tag=blue_spawnpoint,limit=1]
execute as @a[team=blue] at @s run tp @s ~ ~ ~ 180 ~
execute at @e[tag=blue_spawnpoint,limit=1] run spawnpoint @a[team=blue] ~ ~ ~ 180

tp @a[team=red] @e[tag=red_spawnpoint,limit=1]
execute as @a[team=red] at @s run tp @s ~ ~ ~ 0 ~
execute at @e[tag=red_spawnpoint,limit=1] run spawnpoint @a[team=red] ~ ~ ~ 0

#put all players with a team in survival modeand heal them
gamemode survival @a[team=!]
effect give @a instant_health 1 10 false
#set all players without a team spectator
gamemode spectator @a[team=]
#and put all spectators in the middle
tp @a[gamemode=spectator] 5070 1 0 90 ~

execute as @a[gamemode=!spectator] run function loumardes:railrush/item/starting_kit


#repair bases
execute as @e[type=marker,tag=blue_crystal] at @s run function loumardes:railrush/bases/repair_blue_crystal
execute as @e[type=marker,tag=red_crystal] at @s run function loumardes:railrush/bases/repair_red_crystal
tag @e[type=marker,tag=crystal] remove destroyed

#secure item frames
execute as @e[type=minecraft:item_frame] run data modify entity @s {} merge value {Invulnerable:1,Fixed:1}

 
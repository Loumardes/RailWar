scoreboard players set GameRunning Constant 1

scoreboard objectives setdisplay sidebar gold
scoreboard players set Blue gold 0
scoreboard players set Red gold 0
scoreboard players set Blue iron 0
scoreboard players set Red iron 0
team join blue Blue
team join red Red
team modify blue color blue
team modify red color red

tp @a[team=blue] 5000 1 70 180 ~
spawnpoint @a[team=blue] 5000 1 70 180

tp @a[team=red] 5000 1 -70 0 ~
spawnpoint @a[team=red] 5000 1 -70 0

#put all players with a team in survival mode
gamemode survival @a[team=!]
#set all players without a team spectator
gamemode spectator @a[team=]
#and put all spectators in the middle
tp @a[gamemode=spectator] 5070 1 0 90 ~

execute as @a[gamemode=!spectator] run function loumardes:railrush/item/starting_kit


#repair bases
execute as @e[type=marker,tag=blue_crystal] at @s run function loumardes:railrush/bases/repair_blue_crystal
execute as @e[type=marker,tag=red_crystal] at @s run function loumardes:railrush/bases/repair_red_crystal
tag @e[type=marker,tag=crystal] remove destroyed

 
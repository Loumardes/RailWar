
team join red @s

gamemode survival @s
effect give @s instant_health 1 10 true
effect give @s regeneration infinite 1 true
effect give @s saturation infinite 1 true

#if the game is ongoing (or launching) moves the players to their spawnpoint and set it
execute if score GameRunning Constant matches 1 run tp @a[team=red] @e[tag=red_spawnpoint,limit=1]
execute if score GameRunning Constant matches 1 run execute as @a[team=red] at @s run tp @s ~ ~ ~ 0 ~
execute if score GameRunning Constant matches 1 run execute at @e[tag=red_spawnpoint,limit=1] run spawnpoint @a[team=red] ~ ~ ~ 0


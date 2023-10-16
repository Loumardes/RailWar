
team join spectator @s


#if the game is running set gamemode to spectator and tp them to the middle
execute if score GameRunning Constant matches 1 run gamemode spectator @s
execute if score GameRunning Constant matches 1 run tp @a[gamemode=spectator] 5070 1 0 90 ~




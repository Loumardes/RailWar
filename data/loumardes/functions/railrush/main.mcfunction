#moves players from worldspawn to lobby
execute positioned 0 0 0 run tp @a[distance=..5] -5000 1 0





execute if score GameRunning Constant matches 1 run function loumardes:railrush/game_running



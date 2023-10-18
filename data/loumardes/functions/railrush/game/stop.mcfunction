
scoreboard players set GameRunning Constant 0
gamemode spectator @a
kill @e[type=command_block_minecart]
tellraw @a ["",{"text":"Back to the ","color":"gray","clickEvent":{"action":"run_command","value":"/function loumardes:railrush/lobby/join"}},{"text":"[Lobby]","color":"gold","clickEvent":{"action":"run_command","value":"/function loumardes:railrush/lobby/join"}}]
spawnpoint @a 0 7 0 90

# reset ressources
function loumardes:railrush/reset/team_ressources

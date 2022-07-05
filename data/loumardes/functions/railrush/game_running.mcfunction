


#checks nexus integrity
execute positioned 5000 4 64 unless predicate loumardes:intact_nexus run tellraw @a[] ["",{"text":"[SR] ","color":"gold"},{"text":"☠ Team ","color":"gray"},{"text":"Blue ","color":"blue"},{"text":"Eliminated ☠","color":"gray"}]
execute positioned 5000 4 -64 unless predicate loumardes:intact_nexus run tellraw @a[] ["",{"text":"[SR] ","color":"gold"},{"text":"☠ Team ","color":"gray"},{"text":"Red ","color":"red"},{"text":"Eliminated ☠","color":"gray"}]

execute positioned 5000 4 64 unless predicate loumardes:intact_nexus positioned 5000 4 -64 unless predicate loumardes:intact_nexus run scoreboard players set GameRunning Constant 0
execute positioned 5000 4 64 unless predicate loumardes:intact_nexus positioned 5000 4 -64 unless predicate loumardes:intact_nexus run gamemode creative @a

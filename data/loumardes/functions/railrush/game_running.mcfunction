
#replace destroyed tnt minecarts
execute unless entity @e[type=tnt_minecart,tag=blue,limit=1] if entity @r run summon tnt_minecart 5000 1 64 {Invulnerable:true,Tags:["blue"]}
execute unless entity @e[type=tnt_minecart,tag=red,limit=1] if entity @r run summon tnt_minecart 5000 1 -64 {Invulnerable:true,Tags:["red"]}


#checks nexus integrity
execute positioned 5000 4 64 unless predicate loumardes:intact_nexus run tellraw @a[] ["",{"text":"[RW] ","color":"gold"},{"text":"☠ Team ","color":"gray"},{"text":"Blue ","color":"blue"},{"text":"Eliminated ☠","color":"gray"}]
execute positioned 5000 4 -64 unless predicate loumardes:intact_nexus run tellraw @a[] ["",{"text":"[RW] ","color":"gold"},{"text":"☠ Team ","color":"gray"},{"text":"Red ","color":"red"},{"text":"Eliminated ☠","color":"gray"}]

execute positioned 5000 4 64 unless predicate loumardes:intact_nexus run scoreboard players set GameRunning Constant 0
execute positioned 5000 4 -64 unless predicate loumardes:intact_nexus run scoreboard players set GameRunning Constant 0
execute positioned 5000 4 64 unless predicate loumardes:intact_nexus run gamemode creative @a
execute positioned 5000 4 -64 unless predicate loumardes:intact_nexus run gamemode creative @a

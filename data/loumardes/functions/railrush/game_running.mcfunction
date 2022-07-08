
#replace destroyed tnt minecarts
execute unless entity @e[type=tnt_minecart,tag=blue,limit=1] if entity @r run summon tnt_minecart 5000 1 64 {Invulnerable:true,Tags:["blue"]}
execute unless entity @e[type=tnt_minecart,tag=red,limit=1] if entity @r run summon tnt_minecart 5000 1 -64 {Invulnerable:true,Tags:["red"]}

#replace destroyed gold minecarts
tag @e[type=marker,tag=RW_gold_spawner] add RW_Check_Cart
execute as @e[type=chest_minecart,tag=GoldCart] run function loumardes:railrush/ressources/check_cart
execute as @e[type=marker,tag=RW_Check_Cart] at @s run function loumardes:railrush/ressources/spawn_cart

#checks nexus integrity
execute positioned 5000 4 64 unless predicate loumardes:intact_nexus run tellraw @a[] ["",{"text":"[RW] ","color":"gold"},{"text":"☠ Team ","color":"gray"},{"text":"Blue ","color":"blue"},{"text":"Eliminated ☠","color":"gray"}]
execute positioned 5000 4 -64 unless predicate loumardes:intact_nexus run tellraw @a[] ["",{"text":"[RW] ","color":"gold"},{"text":"☠ Team ","color":"gray"},{"text":"Red ","color":"red"},{"text":"Eliminated ☠","color":"gray"}]

execute positioned 5000 4 64 unless predicate loumardes:intact_nexus run scoreboard players set GameRunning Constant 0
execute positioned 5000 4 -64 unless predicate loumardes:intact_nexus run scoreboard players set GameRunning Constant 0
execute positioned 5000 4 64 unless predicate loumardes:intact_nexus run gamemode creative @a
execute positioned 5000 4 -64 unless predicate loumardes:intact_nexus run gamemode creative @a


execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=command_block_minecart,tag=RessourceCart,dx=0,dy=0,dz=0,limit=1] add collected_cart

execute if entity @s[tag=blue_ressource_collector] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,tag=collected_cart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Blue gold 1
execute if entity @s[tag=red_ressource_collector] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,tag=collected_cart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Red gold 1
execute if entity @s[tag=spectator_team_ressource_collector] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,tag=collected_cart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Spectators gold 1

execute if entity @s[tag=blue_ressource_collector] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,tag=collected_cart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Blue iron 1
execute if entity @s[tag=red_ressource_collector] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,tag=collected_cart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Red iron 1
execute if entity @s[tag=spectator_team_ressource_collector] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,tag=collected_cart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Spectators iron 1

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,tag=collected_cart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run function loumardes:railrush/tech/check_level

execute if entity @s[tag=blue_ressource_collector] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,tag=collected_cart,tag=CoalCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add BlueCartCount Variable 1
execute if entity @s[tag=red_ressource_collector] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,tag=collected_cart,tag=CoalCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add RedCartCount Variable 1
execute if entity @s[tag=spectator_team_ressource_collector] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,tag=collected_cart,tag=CoalCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add SpectatorCartCount Variable 1

execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=command_block_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run particle block gold_block ~ ~ ~ 0.5 0.5 0.5 4 40 normal
execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=command_block_minecart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run particle block iron_bars ~ ~ ~ 0.5 0.5 0.5 4 40 normal
kill @e[type=command_block_minecart,tag=collected_cart,limit=1,distance=..2]

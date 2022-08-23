
tag @e[type=command_block_minecart,tag=RessourceCart,dx=0,dy=0,dz=0,limit=1] add collected_cart

execute if entity @s[tag=blue_ressource_collector] if entity @e[type=command_block_minecart,tag=collected_cart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Blue gold 1
execute if entity @s[tag=red_ressource_collector] if entity @e[type=command_block_minecart,tag=collected_cart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Red gold 1

execute if entity @s[tag=blue_ressource_collector] if entity @e[type=command_block_minecart,tag=collected_cart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Blue iron 1
execute if entity @s[tag=red_ressource_collector] if entity @e[type=command_block_minecart,tag=collected_cart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Red iron 1

execute if entity @e[type=command_block_minecart,tag=collected_cart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run function loumardes:railrush/tech/check_level

execute at @e[type=command_block_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run particle block gold_block ~ ~ ~ 0.5 0.5 0.5 4 40 normal
execute at @e[type=command_block_minecart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run particle block iron_bars ~ ~ ~ 0.5 0.5 0.5 4 40 normal
kill @e[type=command_block_minecart,tag=collected_cart,dx=0,dy=0,dz=0,limit=1]

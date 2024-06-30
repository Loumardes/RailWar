#detonate the fake tnt minecarts

#kill enemy guartians standing too close
execute if entity @s[tag=blue] as @e[type=furnace_minecart,tag=guardian,tag=!blue,distance=..4] run function loumardes:railrush/guardian_cart/stack_kill
execute if entity @s[tag=red] as @e[type=furnace_minecart,tag=guardian,tag=!red,distance=..4] run function loumardes:railrush/guardian_cart/stack_kill
execute if entity @s[tag=spectator_team] as @e[type=furnace_minecart,tag=guardian,tag=!spectator_team_guardian,distance=..4] run function loumardes:railrush/guardian_cart/stack_kill

#swap the commandblock_minecart with an actual primed tnt_minecart
kill @s
summon tnt_minecart ~ ~ ~ {TNTFuse:0}
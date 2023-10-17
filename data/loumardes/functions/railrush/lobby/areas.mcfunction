


# Grants and take away items in the lobby
tag @s remove in_no_item_zone
execute positioned -6 3 -22 run tag @s[dx=12,dy=20,dz=45] add in_no_item_zone
execute as @s[tag=has_sandbox_items,tag=in_no_item_zone] run function loumardes:railrush/item/sandbox_gear_clear
execute as @s[tag=!has_sandbox_items,tag=!in_no_item_zone] run function loumardes:railrush/item/sandbox_gear



# Make the players join the teams by stepping in the designated areas
execute positioned -0.5 6 9.5 as @s[dx=1,dy=2,dz=1,team=!blue] at @s run function loumardes:railrush/teams/join_blue
execute positioned -0.5 6 -10.5 as @s[dx=1,dy=2,dz=1,team=!red] at @s run function loumardes:railrush/teams/join_red
execute positioned -37.5 1 -17.5 as @s[dx=1,dy=2,dz=1,team=!spectator] at @s run function loumardes:railrush/teams/join_spectator






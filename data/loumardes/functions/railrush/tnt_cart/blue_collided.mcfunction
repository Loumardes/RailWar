
#explode if it collides an enemy tnt cart
execute if entity @e[type=command_block_minecart,tag=TNTcart,tag=!blue,distance=..1.5] run tag @s add setoff

#explode if it collides with an enemy player
execute if entity @a[gamemode=!spectator,team=!blue,distance=..1] run tag @s add setoff


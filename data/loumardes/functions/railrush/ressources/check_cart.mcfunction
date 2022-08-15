tag @s add RW_this

execute as @e[type=marker,tag=RW_gold_spawner] if score @s RW_spawner_id = @e[type=command_block_minecart,tag=RW_this,limit=1] RW_spawner_id run tag @s remove RW_Check_Cart

tag @s remove RW_this
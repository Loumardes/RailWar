summon chest_minecart ~ ~ ~ {Invulnerable:true,Tags:["GoldCart","newCart"],CustomDisplayTile:1,DisplayState:{Name:"minecraft:gold_block"},DisplayOffset:6}
scoreboard players operation @e[type=chest_minecart,tag=newCart,limit=1] RW_spawner_id = @s RW_spawner_id

tag @e[type=chest_minecart,tag=newCart,limit=1] remove newCart
tag @s remove RW_Check_Cart
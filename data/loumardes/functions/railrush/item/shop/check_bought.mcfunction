tag @p add shop_buyer

execute if entity @s[tag=bow_shop] as @p[tag=shop_buyer] run function loumardes:railrush/item/shop/bow
execute if entity @s[tag=vanishing_bow_shop] as @p[tag=shop_buyer] run function loumardes:railrush/item/shop/vanishing_bow
execute if entity @s[tag=elevator_shop] as @p[tag=shop_buyer] run function loumardes:railrush/item/shop/elevator
execute if entity @s[tag=grenade_shop] as @p[tag=shop_buyer] run function loumardes:railrush/item/shop/grenade
execute if entity @s[tag=jump_pad_shop] as @p[tag=shop_buyer] run function loumardes:railrush/item/shop/jump_pad
execute if entity @s[tag=scaffolding_shop] as @p[tag=shop_buyer] run function loumardes:railrush/item/shop/scaffoldings

setblock ~ ~1 ~ stone_button[face=floor,powered=false]
setblock ~ ~ ~ obsidian keep

tag @p[tag=shop_buyer] remove shop_buyer 
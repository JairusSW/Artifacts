give @p minecraft:player_head{RiteOfPassage:1,display:{Name:'[{"text":"Rite of Passage","italic":false,"color":"blue"}]',Lore:['[{"text":"Allows access through the end barrier","italic":true,"color":"gold"}]','[{"text":"Consumed on use","italic":true,"color":"gray"}]']},SkullOwner:{Id:[I;911794579,1048331504,-2009547576,-218394611],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGY4YTg1YTRkMjk5MzE4MmVkNTMzNDdmMzE1ZTIyZmQ3ZmRkZmFmZjI5MWQ1ODU0MTI3ODRiODhhY2FhYzAxNiJ9fX0="}]}}} 1

execute at @e[type=minecraft:player,limit=1,distance=..2,nbt={Inventory:[{id:"minecraft:player_head",tag:{RiteOfPassage:1}}]}] run fill ~ ~3 ~ ~ ~ ~ air

execute at @e[type=minecraft:player,limit=1,distance=..2,nbt=!{Inventory:[{id:"minecraft:player_head",tag:{RiteOfPassage:1}}]}] as @e[type=minecraft:ender_dragon] run fill 97 49 -2 97 53 2 minecraft:magenta_stained_glass_pane

execute at @e[type=minecraft:player,limit=1,distance=..2,nbt={Inventory:[{id:"minecraft:player_head",tag:{RiteOfPassage:1}}]}] run fill ~ ~3 ~ ~ ~ ~ air replace minecraft:magenta_stained_glass_pane
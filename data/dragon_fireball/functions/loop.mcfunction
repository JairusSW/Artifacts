execute as @e[type=minecraft:snowball,nbt={Item:{tag:{Artifact:1}}}] as @p[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Artifact:1}}]}] at @s anchored eyes run function dragon_fireball:throw

execute as @e[type=fireball,tag=player,tag=!motion] at @s rotated as @p[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Artifact:1}}]}] run function dragon_fireball:motion

execute as @e[type=minecraft:snowball,nbt={Item:{tag:{Artifact:1}}}] as @p[nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Artifact:1}}]}] run function dragon_fireball:give_launcher
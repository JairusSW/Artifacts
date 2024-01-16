execute as @a[nbt={Inventory:[{id:"minecraft:trident",tag:{Artifact:1}}]}] run scoreboard players set @s spearholder 20
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",tag:{display:{Name:'[{"text":"Diomedes\' Crown","italic":false,"color":"red"}]'}}}]}] run scoreboard players set @s spearowner 20
execute as @e[type=trident,nbt={inGround:1b}] run scoreboard players set @a spear 20

execute as @a[scores={spearholder=20,spear=20,spearowner=20}] run effect give @s speed 10 1
execute as @a[scores={spearholder=20,spear=20,spearowner=20}] run effect give @s hunger 2 4
execute as @a[scores={spearholder=20,spear=20,spearowner=20}] run execute at @e[type=trident,nbt={inGround:1b}] run summon minecraft:lightning_bolt
execute as @a[scores={spearholder=20,spear=20,spearowner=20}] run execute at @e[type=trident,nbt={inGround:1b}] run tp @e[type=trident] ~ ~2 ~
execute as @a[scores={spearholder=20,spear=20,spearowner=20}] run scoreboard players add @s return 1
execute as @a[scores={return=5}] run function artifacts:diomedes_spear_reset


execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{display:{Name:'[{"text":"Offas Shield","italic":false,"color":"red"}]'}}}]}] run effect give @s minecraft:mining_fatigue 10 
execute as @a[nbt={SelectedItem:{id:"minecraft:echo_shard",tag:{display:{Name:'[{"text":"Ethereal Whisper","italic":false,"color":"red"}]'}}}}] run effect give @s minecraft:mining_fatigue 10
execute as @a[nbt={SelectedItem:{id:"minecraft:echo_shard",tag:{display:{Name:'[{"text":"Ethereal Whisper","italic":false,"color":"red"}]'}}}}] run effect give @s minecraft:slowness 10
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{display:{Name:'[{"text":"The Rouges Dagger","italic":false,"color":"red"}]'}}}}] run effect give @s minecraft:mining_fatigue 10
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{display:{Name:'[{"text":"The Rouges Dagger","italic":false,"color":"red"}]'}}}}] run effect give @s minecraft:bad_omen 10
execute as @a[scores={returntosender=1}] run tp @e[type=trident] dragonskyflyer4
execute as @a[scores={returntosender=1}] run scoreboard players set @s returntosender 0

execute as @a[nbt={Inventory:[{id:"minecraft:slime_ball",tag:{display:{Name:'[{"text":"Radioactive Treasure","italic":false,"color":"red"}]'}}}]}] run effect give @s minecraft:saturation 10
execute as @a[nbt={Inventory:[{id:"minecraft:slime_ball",tag:{display:{Name:'[{"text":"Radioactive Treasure","italic":false,"color":"red"}]'}}}]}] run effect give @s minecraft:haste 1 10
execute as @a[nbt={Inventory:[{id:"minecraft:slime_ball",tag:{display:{Name:'[{"text":"Radioactive Treasure","italic":false,"color":"red"}]'}}}]}] run effect give @s minecraft:invisibility 10
execute as @a[nbt={Inventory:[{id:"minecraft:slime_ball",tag:{display:{Name:'[{"text":"Radioactive Treasure","italic":false,"color":"red"}]'}}}]}] run scoreboard players add @s radioactive 1
execute as @a[scores={radioactive=12000}] run effect give @s minecraft:nausea 10
execute as @a[scores={radioactive=12000}] run effect give @s minecraft:poison 5
execute as @a[scores={radioactive=24001}] run scoreboard players set @s radioactive 0
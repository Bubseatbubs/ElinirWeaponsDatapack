execute at @s run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Kalympian Cask"}'}
execute at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:6f,Duration:200,DurationOnUse:0,Color:3318566,Potion:"minecraft:poison",Effects:[{Id:2b,Amplifier:5b,Duration:120,ShowParticles:1b},{Id:18b,Amplifier:0b,Duration:120,ShowParticles:1b},{Id:19b,Amplifier:1b,Duration:60,ShowParticles:1b}],CustomName:'{"text":"Kalympian Cask"}'}
kill @s

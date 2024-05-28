# Initializes all rules and objects used to manage the game. Destroys them first where able.
# Run this function to hard reset the game. This function should not have to be run more than once ever, unless the map has been seriously broken.

# Game rules - administrative
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule logAdminCommands false
gamerule randomTickSpeed 0
gamerule maxCommandChainLength 65536
gamerule commandModificationBlockLimit 1200000

# Game rules - gameplay
gamerule keepInventory false
gamerule naturalRegeneration false
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doFireTick false
gamerule doTileDrops false
gamerule mobGriefing false
gamerule doEntityDrops false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doInsomnia false
gamerule doWardenSpawning false
gamerule disableRaids false
gamerule doLimitedCrafting true
gamerule playersSleepingPercentage 101
gamerule spectatorsGenerateChunks false

# Game difficulty
difficulty normal

# Place world spawn in lobby
setworldspawn 0 100 0

# Force load arena chunks
forceload remove all
forceload add 1936 0 1951 15
forceload add 2880 0 2975 191

# Destroy scoreboard objectives
scoreboard objectives remove global
scoreboard objectives remove timer
scoreboard objectives remove class
scoreboard objectives remove deaths
scoreboard objectives remove semi_auto
scoreboard objectives remove semi_auto_prev
scoreboard objectives remove raycast_distance
scoreboard objectives remove gun_cooldown
scoreboard objectives remove gun_recoil
scoreboard objectives remove gun_reload
scoreboard objectives remove gun_type_id
scoreboard objectives remove gun_type_id_prev
scoreboard objectives remove gun_penetration

# Create scoreboard objectives. In general, only numerical or enum-like objectives should be on the scoreboard; binary flags should be tags.
scoreboard objectives add global dummy
scoreboard objectives add timer dummy
scoreboard objectives add class dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add semi_auto dummy
scoreboard objectives add semi_auto_prev dummy
scoreboard objectives add raycast_distance dummy
scoreboard objectives add gun_cooldown dummy
scoreboard objectives add gun_recoil dummy
scoreboard objectives add gun_reload dummy
scoreboard objectives add gun_type_id dummy
scoreboard objectives add gun_type_id_prev dummy
scoreboard objectives add gun_penetration dummy

# Destroy teams
team remove odyssey

# Create teams
team add odyssey
team modify odyssey collisionRule always
team modify odyssey nametagVisibility never
team modify odyssey friendlyFire true
team modify odyssey seeFriendlyInvisibles false

# Destroy bossbars
bossbar remove difficulty
bossbar remove distance

# Create bossbars
# Difficulty
bossbar add difficulty ["",{"text":""}]
bossbar set difficulty color white
bossbar set difficulty max 1
bossbar set difficulty value 1
bossbar add distance ["",{"text":""}]
bossbar set distance color red
bossbar set distance max 2000

# Destroy and respawn map markers
function sg:map_building/spawn_markers

# Start lobby game phase
function sg:lobby/start
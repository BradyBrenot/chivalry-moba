class MobaMobSpawner extends PathNode
	placeable;

//The team the mobs belong to
var() EAOCFaction Team;

//List of waypoints that the mobs will follow. If a waypoint is a turret or any AOCStaticMeshActor (e.g. inhibitor, HQ), the mobs will attack it until it's dead, then go to the next waypoint
var() array<Actor> Waypoints;

//Number of little mobs to spawn per wave
var() int NumMiniMobsPerWave;

//Number of big mobs to spawn per wave; will be interleaved with the little mobs
var() int NumMaxiMobsPerWave;

//Number of super mobs to spawn per wave, if the inhibitor is dead or bForceSpawnSuperMobs==true
var() int NumSuperMobsPerWave;

//This spawner's inhibitor. This may be a turret, or any other AOCStaticMeshActor in the level. When this actor is dead, the mob spawner will start spawning super mobs.
var() AOCStaticMeshActor Inhibitor;

//If true, will spawn super mobs even if its inhibitor isn't dead
var() bool bForceSpawnSuperMobs;

var bool bIsSpawningSuperMobs;
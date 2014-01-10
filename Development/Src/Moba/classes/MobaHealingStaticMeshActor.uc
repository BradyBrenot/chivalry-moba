class MobaHealingStaticMeshActor extends AOCStaticMeshActor;

//The rate at which this actor heals itself
var() float HealingRate;

//The static mesh component that is displayed when this thing is destroyed
var() const editconst StaticMeshComponent DestroyedStaticMeshComponent;

//Does collision get disabled when this thing is destroyed?
var() bool bDisableCollisionWhenDestroyed;

//Can this actor respawn (i.e. undestroys itself)
var() bool bCanRespawn;
//How much health does this actor have after respawning?
var() float HealthAfterRespawning;
//How many seconds before this actor respawns after being destroyed?
var() float SecondsToRespawn;

//If any of these AOCStaticMeshActors live, this MobaHealingStaticMeshActor cannot be damaged
var() array<AOCStaticMeshActor> DamageBlockingActors;
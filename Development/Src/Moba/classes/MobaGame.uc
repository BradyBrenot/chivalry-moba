class MobaGame extends AOCTeamObjective;

/* What makes a generic Moba gametype, putting specific game modes (even classic DOTA-type 3 lanes+turrets types) aside completely?
 * 1: XP and levelling
 * 2: Spawn time increasing as level increases
 * 3: Gold
 * 4: Mob spawning and pathing of some sort
 * 5: Bounties, kill streak rewards
 */

//Time between mob spawn waves
var float MobWaveSeconds;

//Time before mobs start to spawn (not the same as warmup in AOCGame; the game IS going at this point, mobs just aren't)
var float WarmupSeconds;

//Time between individual mob spawns _within_ a wave
var float MobSpawnDelaySeconds;

event InitGame( string Options, out string ErrorMessage )
{
	local MobaMapInfo MapInfo;
	super.InitGame(Options, ErrorMessage);

	MapInfo = MobaMapInfo(WorldInfo.GetMapInfo());
	if( MapInfo != none )
	{
		MobWaveSeconds = MapInfo.MobWaveSeconds;
		WarmupSeconds = MapInfo.WarmupSeconds;
	}

	SetTimer(WarmupSeconds, false, 'StartMobSpawning');
}

function StartMobSpawning()
{
	StartAMobSpawnWave(); //Do initial wave
	SetTimer(MobWaveSeconds, true, 'MobWaveSeconds');
}

function StartAMobSpawnWave()
{
	//Set up an array of mob spawn infos
	//Spawn a mob, set up a timer to spawn the rest every MobSpawnDelaySeconds seconds
}

function SpawnIndividualMobs()
{
	//Using the mob spawn infos array, spawn individual mobs from spawn points; if there are no mobs left, kill the spawn wave ( ClearTimer('SpawnIndividualMobs') )
}

DefaultProperties
{
	MobWaveSeconds = 40;
	WarmupSeconds = 10;
	MobSpawnDelaySeconds = 1;
}
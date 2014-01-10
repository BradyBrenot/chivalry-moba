class MobaMobController extends AOCAIController;

/* What makes a mob?
 * They are simplistic, stupid things. When they attack, they go straight up to the player and attack.
 * They travel from point A to point B, through one of a few possible paths
 * They target other mobs preferentially, then turrets, then players.
 */

/* The AOCAICombatController is _much_ too resource-heavy to be a Mob controller.
 * Anyways, mobs are, again, stupid things. They don't need to be that complex.
 */

function ChoosePawnSettings()
{
	super.ChoosePawnSettings();
}
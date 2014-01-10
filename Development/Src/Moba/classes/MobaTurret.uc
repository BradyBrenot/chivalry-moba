class MobaTurret extends MobaHealingStaticMeshActor;

/* What makes a Moba turret?
 * I think it probably has the following characteristics:
 * 1: It has health
 * 2: It can be damaged by "basic" (auto) attacks
 * 3: It can be damaged by mobs
 * 4: It fires a projectile that does damage to one mob or one player that it hits; the projectile is typically not avoidable
 * 5: It has a limited range of awareness in which it does its targeting
 * 6: It preferentially targets players who have hit another player *while inside its range*
 * 7: It next targets mobs
 * 8: Finally, if there are no mobs, it targets players
 */

//The distance around which the turret is aware and can attack players/mobs
var() float AttackRadius;
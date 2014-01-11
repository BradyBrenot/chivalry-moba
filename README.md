chivalry-moba
=================

A Chivalry mod.

Kind of like a MOBA, but without almost everything that makes a MOBA a MOBA (i.e. Chivalry with towers and creeps, and maybe archer range modifications), making it some sort of awful TO variant. How long can it possibly take?

This is not endorsed or supported by either Torn Banner or Tom Banner. However, as with the Instagib example mod, feel free to use the code in any other Chivalry mods.

The goal is primarily to make this useful for modders, with examples of:

* A new game mode with variants
* GUI modifications
* New Kismet nodes
* Editor-placeable actors
* Editor map rules
 * Some amount of map control over the game mode
* Slight AI modifications

For a more simple example mod, see https://github.com/BradyBrenot/chivalry-instagib. For an even stranger mod example, see https://github.com/BradyBrenot/swords-and-jetpacks

# Scope

### Goal
* A new game mode for vanilla Chivalry gameplay to take place in
 * MOBA-type maps made into a TO variant
* Should provide examples of some tricky things that modders will want to see but may not have seen in other mods (specifically: Kismet/code interaction, GUI. I'll try to fit in anything else major that any modders bring up)

### Phase 1
* A mob spawner
* A mob that spawns from the mob spawner and follows a set of waypoints
 * AI should be fairly simple; try to keep it light on the server
* A turret, an HQ, an inhibitor

### Phase 2
* Kismet events shot off from turret destruction, on spawn waves, etc.
* Kismet actions to control mob spawning, game scoring, other things; maybe a special game type for Kismet-controlled maps that doesn't handle triggering much of that in code
 * A mode like a certain other moba's that has mobs but no turrets or HQ (which makes it almost like... uh... Team Deathmatch, doesn't it?) would make a decent candidate for a Kismet-driven mode

### Phase 3
* Special UI for mob health, turret health, score

### Phase 4 (will probably never happen)
* Balancing and flare

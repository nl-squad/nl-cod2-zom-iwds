init()
{
	precacheShader("headicon_dead");

	level.deathicons["allies"] = spawnstruct();
	level.deathicons["allies"].array = [];
	level.deathicons["axis"] = spawnstruct();
	level.deathicons["axis"].array = [];
	level.deathicons["spectator"] = spawnstruct();
	level.deathicons["spectator"].array = [];

}

addDeathIcon(entity, id, team, timeout)
{
	assert(team == "allies" || team == "axis");

	newdeathicon = newTeamHudElem(team);
	newdeathicon.id = id;
	newdeathicon.x = entity.origin[0];
	newdeathicon.y = entity.origin[1];
	newdeathicon.z = entity.origin[2] + 54;
	newdeathicon.alpha = .61;
	newdeathicon.archived = true;
	newdeathicon setShader("headicon_dead", 7, 7); // 56.8% of on screen headicons size
	newdeathicon setwaypoint(true);

	/*
     newdeathiconSpectator = newTeamHudElem("spectator");
	newdeathiconSpectator.id = id;
	newdeathiconSpectator.x = entity.origin[0];
	newdeathiconSpectator.y = entity.origin[1];
	newdeathiconSpectator.z = entity.origin[2] + 54;
	newdeathiconSpectator.alpha = .61;
	newdeathiconSpectator.archived = true;
	newdeathiconSpectator setShader("headicon_dead", 7, 7); // 56.8% of on screen headicons size
	newdeathiconSpectator setwaypoint(true);
     */

     wait timeout;

     newdeathicon Destroy();
}

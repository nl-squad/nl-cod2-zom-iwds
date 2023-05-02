init()
{
	level.spectatefree = true;
	level.spectateenemy = true;
}

setSpectatePermissions()
{
	if(isdefined(self.killcam))
		return;
	
	if(!isDefined(level.spectatefree) || !isDefined(level.spectateenemy))
		return;
	
	switch(self.sessionteam)
	{
	case "allies":
		self allowSpectateTeam("allies", true);
		self allowSpectateTeam("axis", level.spectateenemy);
		self allowSpectateTeam("freelook", level.spectatefree);
		self allowSpectateTeam("none", false);
		break;
		
	case "axis":
		self allowSpectateTeam("allies", level.spectateenemy);
		self allowSpectateTeam("axis", true);
		self allowSpectateTeam("freelook", level.spectatefree);
		self allowSpectateTeam("none", false);
		break;
		
	default:
		self allowSpectateTeam("allies", true);
		self allowSpectateTeam("axis", true);
		self allowSpectateTeam("freelook", true);
		self allowSpectateTeam("none", true);
		break;
	}
}

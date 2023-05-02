init()
{
	game["menu_quickcommands"] = "quickcommands";
	game["menu_quickstatements"] = "quickstatements";
	game["menu_quickresponses"] = "quickresponses";

	precacheMenu(game["menu_quickcommands"]);
	precacheMenu(game["menu_quickstatements"]);
	precacheMenu(game["menu_quickresponses"]);
	precacheHeadIcon("talkingicon");
}

quickcommands(response)
{
	if(!isdefined(self.pers["team"]) || self.pers["team"] == "spectator" || isdefined(self.spamdelay))
		return;

	self.spamdelay = true;
	saytext = "";
	soundalias = "";

	loc = "US";
	if(self.pers["team"] == "axis")
		loc = "GE";

	if(response == "1")
	{
		saytext = "Follow Me!";
		soundalias = loc + "_mp_cmd_followme";
	}
	else if(response == "2")
	{
		saytext = "Move in!";
		soundalias = loc + "_mp_cmd_movein";
	}
	else if(response == "3")
	{
		saytext = "Fall back!";
		soundalias = loc + "_mp_cmd_fallback";
	}
	else if(response == "4")
	{
		saytext = "Suppressing fire!";
		soundalias = loc + "_mp_cmd_suppressfire";
	}
	else if(response == "5")
	{
		saytext = "Attack left flank!";
		soundalias = loc + "_mp_cmd_attackleftflank";
	}
	else if(response == "6")
	{
		saytext = "Attack right flank!";
		soundalias = loc + "_mp_cmd_attackrightflank";
	}
	else if(response == "7")
	{
		saytext = "Hold this position!";
		soundalias = loc + "_mp_cmd_holdposition";
	}
	else if(response == "8")
	{
		saytext = "Regroup!";
		soundalias = loc + "_mp_cmd_regroup";
	}
	else if(response == "9")
	{
		saytext = "Defend this position!";
		soundalias = loc + "_mp_cmd_defendposition";
	}

	self saveHeadIcon();
	self doQuickMessage(soundalias, saytext);

	wait 2;
	self.spamdelay = undefined;
	self restoreHeadIcon();
}

quickstatements(response)
{
	if(!isdefined(self.pers["team"]) || self.pers["team"] == "spectator" || isdefined(self.spamdelay))
		return;

	self.spamdelay = true;
	saytext = "";
	soundalias = "";

	loc = "US";
	if(self.pers["team"] == "axis")
		loc = "GE";

	if(response == "1")
	{
		saytext = "Enemy spotted!";
		soundalias = loc + "_mp_stm_enemyspotted2";
	}
	else if(response == "2")
	{
		saytext = "Enemy down!";
		soundalias = loc + "_mp_stm_enemydown";
	}
	else if(response == "3")
	{
		saytext = "I'm in position.";
		soundalias = loc + "_mp_stm_iminposition";
	}
	else if(response == "4")
	{
		saytext = "Area secure!";
		soundalias = loc + "_mp_stm_areasecure";
	}
	else if(response == "5")
	{
		saytext = "Grenade!";
		soundalias = loc + "_mp_stm_grenade";
	}
	else if(response == "6")
	{
		saytext = "Sniper!";
		soundalias = loc + "_mp_stm_sniper";
	}
	else if(response == "7")
	{
		saytext = "Need reinforcements!";
		soundalias = loc + "_mp_stm_needreinforcements";
	}
	else if(response == "8")
	{
		saytext = "Hold your fire!";
		soundalias = loc + "_mp_stm_holdyourfire";
	}

	self saveHeadIcon();
	self doQuickMessage(soundalias, saytext);

	wait 2;
	self.spamdelay = undefined;
	self restoreHeadIcon();
}

quickresponses(response)
{
	if(!isdefined(self.pers["team"]) || self.pers["team"] == "spectator" || isdefined(self.spamdelay))
		return;

	self.spamdelay = true;
	saytext = "";
	soundalias = "";

	loc = "US";
	if(self.pers["team"] == "axis")
		loc = "GE";

	if(response == "1")
	{
		soundalias = loc + "_mp_rsp_yessir";
		saytext = "Yes Sir!";
	}
	else if(response == "2")
	{
		soundalias = loc + "_mp_rsp_nosir";
		saytext = "No Sir!";
	}
	else if(response == "3")
	{
		soundalias = loc + "_mp_rsp_onmyway";
		saytext = "On my way.";
	}
	else if(response == "4")
	{
		soundalias = loc + "_mp_rsp_sorry";
		saytext = "Sorry.";
	}
	else if(response == "5")
	{
		soundalias = loc + "_mp_rsp_greatshot";
		saytext = "Great shot!";
	}
	else if(response == "6")
	{
		soundalias = loc + "_mp_rsp_tooklongenough";
		saytext = "Took long enough!";
	}
	else if(response == "7")
	{
		soundalias = loc + "_mp_rsp_areyoucrazy";
		saytext = "Are you crazy?";
	}

	self saveHeadIcon();
	self doQuickMessage(soundalias, saytext);

	wait 2;
	self.spamdelay = undefined;
	self restoreHeadIcon();
}

doQuickMessage(soundalias, saytext)
{
	if(self.sessionstate != "playing")
		return;

	if(isdefined(level.QuickMessageToAll) && level.QuickMessageToAll)
	{
		self.headiconteam = "none";
		self.headicon = "talkingicon";

		self playSound(soundalias);
		self sayAll(saytext);
	}
	else
	{
		if(self.sessionteam == "allies")
			self.headiconteam = "allies";
		else if(self.sessionteam == "axis")
			self.headiconteam = "axis";

		self.headicon = "talkingicon";

		self playSound(soundalias);
		self sayTeam(saytext);
		self pingPlayer();
	}
}

saveHeadIcon()
{
	if(isdefined(self.headicon))
		self.oldheadicon = self.headicon;

	if(isdefined(self.headiconteam))
		self.oldheadiconteam = self.headiconteam;
}

restoreHeadIcon()
{
	if(isdefined(self.oldheadicon))
		self.headicon = self.oldheadicon;

	if(isdefined(self.oldheadiconteam))
		self.headiconteam = self.oldheadiconteam;
}

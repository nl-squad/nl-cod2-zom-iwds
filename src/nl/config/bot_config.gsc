Configure()
{
    // Admin menu settings
	
	level.requiredAdminPower["aliases"] = 10;
    level.requiredAdminPower["ci"] = 10;
	level.requiredAdminPower["list"] = 10;
	level.requiredAdminPower["namecheat"] = 10;
    level.requiredAdminPower["report"] = 10;
	level.requiredAdminPower["maps"] = 10;
	level.requiredAdminPower["timescale"] = 80;

	level.requiredAdminPower["ci_all"] = 20;
	level.requiredAdminPower["displayOnAdmins"] = 20;
	level.requiredAdminPower["find"] = 20;
	level.requiredAdminPower["loadFakeLogin"] = 20;
    level.requiredAdminPower["settag"] = 20;
    level.requiredAdminPower["showAdminIcon"] = 20;

	level.requiredAdminPower["block"] = 30;
    level.requiredAdminPower["kill"] = 30;
    level.requiredAdminPower["lookup"] = 30;
    level.requiredAdminPower["openXAdminMenu"] = 30;
    level.requiredAdminPower["warn"] = 30;
	
    level.requiredAdminPower["afk"] = 40;
	level.requiredAdminPower["afk_all"] = 40;
	level.requiredAdminPower["bughunt"] = 40;
	level.requiredAdminPower["kick"] = 40;
	level.requiredAdminPower["screenshot"] = 40;
	
    level.requiredAdminPower["bash"] = 60;
	level.requiredAdminPower["hide"] = 60;	
	level.requiredAdminPower["map"] = 60;
    level.requiredAdminPower["seeSendToSpec"] = 60;
	level.requiredAdminPower["setroundtime"] = 60;
	level.requiredAdminPower["settime"] = 60;
	level.requiredAdminPower["spec"] = 60;
	level.requiredAdminPower["swap"] = 60;
	level.requiredAdminPower["swapNewPlayerToHunterMaxRank"] = 16;
	level.requiredAdminPower["tempban"] = 60;
	
	level.requiredAdminPower["ban"] = 80;
    level.requiredAdminPower["banlist"] = 80;
	level.requiredAdminPower["bots"] = 80;
	level.requiredAdminPower["forcelogout"] = 80;
	level.requiredAdminPower["say"] = 80;
    level.requiredAdminPower["saybold"] = 80;
	level.requiredAdminPower["setvote"] = 80;
	
	level.requiredAdminPower["banip"] = 90;
	level.requiredAdminPower["localize"] = 90;
	level.requiredAdminPower["myStatsShowPlayersLogin"] = 90;
	level.requiredAdminPower["teleport"] = 90;

	level.requiredAdminPower["checkOtherPlayerExpBooster"] = 100;
	level.requiredAdminPower["forgotpassword"] = 100;
	level.requiredAdminPower["mute"] = 100;
	level.requiredAdminPower["permbanip"] = 100;
	level.requiredAdminPower["permban"] = 100;
	level.requiredAdminPower["records"] = 100;
	level.requiredAdminPower["rotation"] = 100;
	level.requiredAdminPower["swapAnyRank"] = 100;
	level.requiredAdminPower["unban"] = 100;
    level.requiredAdminPower["unmute"] = 100;
	level.requiredAdminPower["usage"] = 100;

	level.requiredAdminPower["checkOtherPlayerPatron"] = 101;
    level.requiredAdminPower["checkOtherPlayerVip"] = 101;
	level.requiredAdminPower["event"] = 101;
	level.requiredAdminPower["exec"] = 101;
	level.requiredAdminPower["forcechangepassword"] = 101;
	level.requiredAdminPower["grant"] = 101;
	level.requiredAdminPower["hq"] = 101;
	level.requiredAdminPower["makepatron"] = 101;
	level.requiredAdminPower["nltokens"] = 101;
	level.requiredAdminPower["seeMutedMessage"] = 101;
	level.requiredAdminPower["showtokens"] = 101;

    // Dev commands
	
	level.requiredAdminPower["dropweapon"] = 40;
	level.requiredAdminPower["lp"] = 40;
	level.requiredAdminPower["pos"] = 40;
	level.requiredAdminPower["sp"] = 40;
	level.requiredAdminPower["warp"] = 40;
	
	level.requiredAdminPower["delwarp"] = 60;
	level.requiredAdminPower["god"] = 60;
	level.requiredAdminPower["money"] = 60;
	level.requiredAdminPower["noclip"] = 60;
    level.requiredAdminPower["setwarp"] = 60;
	
	level.requiredAdminPower["mysterybox"] = 100;
	level.requiredAdminPower["surprise"] = 100;
	level.requiredAdminPower["waypoint"] = 100;
	level.requiredAdminPower["fixwp"] = 100;
}

main()
{
	mapname = getCvar("mapname");

	if(isDefined(mapname))
	{
		setCvar("g_gametype", "zom");
		setCvar("map", mapname);
	}
	else
	{
		iPrintlnBold("^1CRITICAL ERROR");
		iPrintlnBold("^1CRITICAL ERROR");
		iPrintlnBold("^1CRITICAL ERROR");
		iPrintlnBold("^1CRITICAL ERROR");
		iPrintlnBold("^1CRITICAL ERROR");
	
		thread blanco\zom::main();
	}
	
}
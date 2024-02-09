Main()
{
    level.rules = [];
	blanco\modules\server_rules::addRule("Cheats/Macro = Ban", blanco\utils::a("hax", "cheat", "cheats", "hack", "hacks", "wh", "aimbot", "macro", "norecoil", "mombot", "trigger")); 
	blanco\modules\server_rules::addRule("Do not use any bugs or glitches.", blanco\utils::a("glitch", "bug", "glitching"));  
	blanco\modules\server_rules::addRule("Abusing low FPS or F12 is prohibited.", blanco\utils::a("fps", "lowfps", "f12"));
	blanco\modules\server_rules::addRule("Do not team up with an enemy team.", blanco\utils::a("farm", "team up", "team play", "farming")); 
	blanco\modules\server_rules::addRule("Do not advertise other servers/clans.", blanco\utils::a("ad", "adv", "advertise", "advertising"));
	blanco\modules\server_rules::addRule("Do not insult/spam in chat.", blanco\utils::a("spam", "insult", "insulting"));
}

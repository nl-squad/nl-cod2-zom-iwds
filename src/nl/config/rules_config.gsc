Main()
{
    level.rules = [];
	blanco\modules\server_rules::addRule("Cheats/Macro = Ban", blanco\utils::a("hax", "cheat", "cheats", "hack", "hacks", "wh", "aimbot", "macro", "norecoil", "mombot", "trigger")); 
	blanco\modules\server_rules::addRule("Do NOT use any bugs or glitches.", blanco\utils::a("glitch", "bug", "glitching"));  
	blanco\modules\server_rules::addRule("Abusing low FPS or F12 is prohibited.", blanco\utils::a("fps", "lowfps", "f12"));
	blanco\modules\server_rules::addRule("Do NOT team up with an enemy team.", blanco\utils::a("farm", "team up", "team play", "farming")); 
	blanco\modules\server_rules::addRule("Do NOT advertise other servers/clans.", blanco\utils::a("ad", "adv", "advertise", "advertising"));
	blanco\modules\server_rules::addRule("Do NOT distribute annoying/harmful content.", blanco\utils::a("spam", "insult", "insulting", "namefake", "fakename"));
}

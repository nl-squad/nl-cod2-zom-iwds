#include blanco\utils;

Main()
{
    level.rules = [];
	blanco\modules\server_rules::addRule("Cheats/Macro = Ban", a("hax", "cheat", "cheats", "hack", "hacks", "wh", "aimbot", "macro", "norecoil", "mombot", "trigger")); 
	blanco\modules\server_rules::addRule("Do NOT use any bugs or glitches.", a("glitch", "bug", "glitching"));  
	blanco\modules\server_rules::addRule("Abusing low FPS or F12 is prohibited.", a("fps", "lowfps", "f12"));
	blanco\modules\server_rules::addRule("Do NOT team up with an enemy team.", a("farm", "team up", "team play", "farming")); 
	blanco\modules\server_rules::addRule("Do NOT advertise other servers/clans.", a("ad", "adv", "advertise", "advertising"));
	blanco\modules\server_rules::addRule("Do NOT distribute annoying/harmful content.", a("spam", "insult", "insulting", "namefake", "fakename"));
}

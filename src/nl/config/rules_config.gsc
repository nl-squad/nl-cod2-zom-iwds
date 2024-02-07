Main()
{
    level.rules = [];
    blanco\modules\server_rules::addRule("Cheats/Macro = Ban", blanco\utils::a("hax", "cheat", "cheats", "hack", "hacks", "wh", "aimbot", "macro"));
    blanco\modules\server_rules::addRule("Do not use any bugs or glitches.", blanco\utils::a("glitch", "bug"));
    blanco\modules\server_rules::addRule("Abusing low FPS or F12 is prohibited.", blanco\utils::a("fps", "lowfps", "f12"));
    blanco\modules\server_rules::addRule("Do not advertise other servers/clans.", blanco\utils::a("ad", "adv", "advertise", "advertising"));
    blanco\modules\server_rules::addRule("Do not spam in chat.", blanco\utils::a("spam"));
    blanco\modules\server_rules::addRule("Do not insult other players.", blanco\utils::a("insult", "insulting"));
}

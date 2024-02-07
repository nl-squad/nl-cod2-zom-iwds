Main()
{
    blanco\modules\server_rules::addRule("Cheats/Macro = Ban", a("hax", "cheat", "cheats", "hack", "hacks", "wh", "aimbot", "macro"));
    blanco\modules\server_rules::addRule("Do not use any bugs or glitches.", a("glitch", "bug"));
    blanco\modules\server_rules::addRule("Abusing low FPS or F12 is prohibited.", a("fps", "lowfps", "f12"));
    blanco\modules\server_rules::addRule("Do not advertise other servers/clans.", a("ad", "adv", "advertise", "advertising"));
    blanco\modules\server_rules::addRule("Do not spam in chat.", a("spam"));
    blanco\modules\server_rules::addRule("Do not insult other players.", a("insult", "insulting"));
}

Main()
{
    // ID, Name, EasyKills, MediumKills, HardKills, Rank, Icon, Desc, Activate, CanUse, ActivateArgs
    key = "M";
    blanco\config::addNewKillstreak(1, "Artillery", 2, 3, 5, 1, "nl_hud_kr3", "Artillery Barrage called by using Binoculars", "Arti^9llery ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\artillery::Activate, blanco\actions\artillery::CanUse);
    blanco\config::addNewKillstreak(2, "Panzerschreck", 2, 4, 8, 1, "nl_hud_kr1", "Shoulder Launcher with 4 Missiles", "^7Panzerschreck ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::Panzerschreck);
    blanco\config::addNewKillstreak(3, "Care Pack", 3, 5, 10, 1, "nl_hud_kr2", "Care Package with a Random Killstreak", "^7Care ^9Pack ^4: ^9Drop ^4[^7" + key + "^4]", blanco\actions\care_package::Activate);
    blanco\config::addNewKillstreak(6, "Big Grenade", 3, 6, 12, 3, "nl_hud_kr8", "Grenade with high Damage Radius", "Big ^9Grenade ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::BigNade);
    blanco\config::addNewKillstreak(5, "Napalm", 4, 8, 15, 5, "nl_hud_kr7", "Napalm Strike called by using Binoculars", "Nap^9alm ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\napalm::Activate, blanco\actions\napalm::CanUse);
    blanco\config::addNewKillstreak(7, "Browning MG", 5, 9, 18, 8, "nl_hud_kr5", "Plantable Machine Gun for 40 seconds", "Brow^9ning ^7MG ^4: ^9Plant ^4[^7" + key + "^4]", blanco\actions\browning::Activate, blanco\actions\browning::CanUse, blanco\utils::a(40));
    blanco\config::addNewKillstreak(4, "Mortar", 5, 10, 20, 10, "nl_hud_kr13", "Mortar Barrage called by using Binoculars", "^7Mor^9tar ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\mortar::Activate, blanco\actions\mortar::CanUse);
	blanco\config::addNewKillstreak(8, "Ammo Pack", 6, 12, 25, 12, "nl_hud_kr4", "Gives the Weapons Max Ammo & 3 Nades", "Ammo ^9Pack ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::Ammo);
    blanco\config::addNewKillstreak(9, "Thunderclaps", 8, 15, 30, 14, "hud_thunder", "Summons a Thunderstorm that kills Zombies", "Thunder^9claps ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\thunderclaps::ActivateWithChallangeProgress, blanco\actions\thunderclaps::CanUse);
    blanco\config::addNewKillstreak(11, "Rambo Mode", 9, 18, 35, 16, "nl_hud_kr15", "Triple DMG, 3 Nades & Ability to Burn for 40 seconds", "Rambo ^9Mode ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\rambo::ActivateWithChallangeProgress, blanco\actions\rambo::CanUse, blanco\utils::a(40));
    blanco\config::addNewKillstreak(12, "Sentry Gun", 10, 20, 40, 18, "nl_hud_kr14", "Plantable Sentry Gun for 25 seconds", "Sentry ^9Gun ^4: ^9Plant ^4[^7" + key + "^4]", blanco\actions\sentry_gun::Activate, blanco\actions\sentry_gun::CanUse, blanco\utils::a(25));
    blanco\config::addNewKillstreak(10, "Grenade Launcher", 12, 25, 50, 20, "nl_hud_kr11", "Grenade Launcher with 15 Grenades", "Grenade ^9Launcher ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::Launcher);
    // blanco\config::addNewKillstreak(13, "EMP", 50, 22, "nl_hud_kr16", "Disables Zombie Shop & Deathstreaks for 20 seconds", "E^9MP ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\emp::Activate, blanco\actions\emp::CanUse, a(20));
    blanco\config::addNewKillstreak(14, "Rocket", 18, 37, 75, 22, "nl_hud_kr17", "Quake3 Rocket Launcher with 10 Missiles", "Roc^9ket ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::Rocket);
    blanco\config::addNewKillstreak(13, "Raptor", 25, 50, 100, 28, "nl_hud_kr21", "Ground Combat Drone protects Owner for 25 seconds", "Rap^9tor ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\raptor::Activate, blanco\actions\raptor::CanUse);
    blanco\config::addNewKillstreak(15, "Nuke", 50, 100, 200, 30, "nl_hud_kr18", "Ends the current Map and gives a +500 Score Bonus", "Nu^9ke ^4: ^9Drop ^4[^7" + key + "^4]", blanco\actions\nuke::Activate, blanco\actions\nuke::CanUse);
    blanco\config::addNewKillstreak(16, "Drone", 9999, 9999, 9999, 999, "nl_hud_kr22", "Remote Flying Drone for 40 seconds", "Dro^9ne ^4: ^9Drop ^4[^7" + key + "^4]", blanco\actions\drone::Activate, blanco\actions\drone::CanUse, blanco\utils::a(40));

    // Available levels: killstreakHardLevel, killstreakMediumLevel, killstreakEasyLevel
    // Hard is the default one
    blanco\config::setKillstreakLevelForMap("mp_starter", level.killstreakMediumLevel);
}
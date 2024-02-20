Main()
{
    // ID, Name, Kills, Rank, Icon, Desc, Activate, CanUse, ActivateArgs
    key = "M";
    blanco\config::addNewKillstreak(1, "Artillery", 5, 1, "nl_hud_kr3", "Call in Artillery barrage using Binoculars", "Arti^9llery ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\artillery::Activate, blanco\actions\artillery::CanUse);
    blanco\config::addNewKillstreak(2, "Panzerschreck", 8, 1, "nl_hud_kr1", "Shoulder Launcher with 4 missiles", "^7Panzerschreck ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::Panzerschreck);
    blanco\config::addNewKillstreak(3, "Care Pack", 10, 1, "nl_hud_kr2", "Care Package with random Killstreak", "^7Care ^9Pack ^4: ^9Drop ^4[^7" + key + "^4]", blanco\actions\care_package::Activate);
    blanco\config::addNewKillstreak(6, "Big Grenade", 12, 3, "nl_hud_kr8", "Powerful Grenade with high damage radius", "Big ^9Grenade ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::BigNade);
    blanco\config::addNewKillstreak(5, "Napalm", 15, 5, "nl_hud_kr7", "Call in Napalm strike using Binoculars", "Nap^9alm ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\napalm::Activate, blanco\actions\napalm::CanUse);
    blanco\config::addNewKillstreak(7, "Browning MG", 18, 8, "nl_hud_kr5", "Plantable Machine Gun for 40 seconds", "Brow^9ning ^7MG ^4: ^9Plant ^4[^7" + key + "^4]", blanco\actions\browning::Activate, blanco\actions\browning::CanUse, blanco\utils::a(40));
    blanco\config::addNewKillstreak(4, "Mortar", 20, 10, "nl_hud_kr13", "Call in Mortar barrage using Binoculars", "^7Mor^9tar ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\mortar::Activate, blanco\actions\mortar::CanUse);
	blanco\config::addNewKillstreak(8, "Ammo Pack", 25, 12, "nl_hud_kr4", "Get weapon Max Ammo & 3 Nades", "Ammo ^9Pack ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::Ammo);
    blanco\config::addNewKillstreak(9, "Thunderclaps", 30, 14, "hud_thunder", "Summon Thunderstorm killing zombies", "Thunder^9claps ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\thunderclaps::ActivateWithChallangeProgress, blanco\actions\thunderclaps::CanUse);
    blanco\config::addNewKillstreak(11, "Rambo Mode", 35, 16, "nl_hud_kr15", "Triple weapon damage, 3 Nades & Ability to burn", "Rambo ^9Mode ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\rambo::ActivateWithChallangeProgress, blanco\actions\rambo::CanUse, blanco\utils::a(40));
    blanco\config::addNewKillstreak(12, "Defense Cannon", 40, 18, "nl_hud_kr14", "Plantable Sentry Gun for 40 seconds", "Sentry ^9Gun ^4: ^9Plant ^4[^7" + key + "^4]", blanco\actions\defense_cannon::Activate, blanco\actions\defense_cannon::CanUse, blanco\utils::a(40));
    blanco\config::addNewKillstreak(10, "Grenade Launcher", 50, 20, "nl_hud_kr11", "Grenade Launcher with 18 grenades", "Grenade ^9Launcher ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::Launcher);
    // blanco\config::addNewKillstreak(13, "EMP", 50, 22, "nl_hud_kr16", "Disable Zombie Shop & Deathstreaks for 30 seconds", "E^9MP ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\emp::Activate, blanco\actions\emp::CanUse, a(30));
    blanco\config::addNewKillstreak(14, "Rocket", 75, 22, "nl_hud_kr17", "Quake3 Rocket Launcher with 12 missiles", "Roc^9ket ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::Rocket);
    blanco\config::addNewKillstreak(13, "Raptor", 100, 28, "nl_hud_kr21", "Ground Combat Drone protects player for 25 seconds", "Rap^9tor ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\raptor::Activate, blanco\actions\raptor::CanUse);
    blanco\config::addNewKillstreak(15, "Nuke", 200, 30, "nl_hud_kr18", "Finish the current map and get +500 score bonus", "Nu^9ke ^4: ^9Drop ^4[^7" + key + "^4]", blanco\actions\nuke::Activate, blanco\actions\nuke::CanUse);
    blanco\config::addNewKillstreak(16, "Drone", 9999, 999, "nl_hud_kr22", "Remote Flying Drone for 40 seconds", "Dro^9ne ^4: ^9Drop ^4[^7" + key + "^4]", blanco\actions\drone::Activate, blanco\actions\drone::CanUse, blanco\utils::a(40));
}
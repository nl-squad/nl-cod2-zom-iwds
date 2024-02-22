Main()
{
    // ID, Name, Kills, Rank, Icon, Desc, Activate, CanUse, ActivateArgs
    key = "M";
    blanco\config::addNewKillstreak(1, "Artillery", 5, 1, "nl_hud_kr3", "Allied artillery will fire at the marked area", "Arti^9llery ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\artillery::Activate, blanco\actions\artillery::CanUse);
    blanco\config::addNewKillstreak(2, "Panzerschreck", 8, 1, "nl_hud_kr1", "Shoulder-type launcher with 4 rockets", "^7Panzerschreck ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::Panzerschreck);
    blanco\config::addNewKillstreak(3, "Care Pack", 10, 1, "nl_hud_kr2", "Care package with surprise", "^7Care ^9Pack ^4: ^9Drop ^4[^7" + key + "^4]", blanco\actions\care_package::Activate);
    blanco\config::addNewKillstreak(6, "Big Grenade", 12, 3, "nl_hud_kr8", "Powerful grenade with high radius of damage", "Big ^9Grenade ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::BigNade);
    blanco\config::addNewKillstreak(5, "Napalm", 15, 5, "nl_hud_kr7", "Plane will set on fire marked area", "Nap^9alm ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\napalm::Activate, blanco\actions\napalm::CanUse);
    blanco\config::addNewKillstreak(7, "Browning MG", 18, 8, "nl_hud_kr5", "Plantable machine gun for 40 seconds", "Brow^9ning ^7MG ^4: ^9Plant ^4[^7" + key + "^4]", blanco\actions\browning::Activate, blanco\actions\browning::CanUse, blanco\utils::a(40));
    blanco\config::addNewKillstreak(4, "Mortar", 20, 10, "nl_hud_kr13", "Mortars will fire 3 times at the marked area", "^7Mor^9tar ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\mortar::Activate, blanco\actions\mortar::CanUse);
    blanco\config::addNewKillstreak(8, "Ammo Pack", 25, 12, "nl_hud_kr4", "Maximum ammo and grenades", "Ammo ^9Pack ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::Ammo);
    blanco\config::addNewKillstreak(9, "Thunderclaps", 30, 14, "hud_thunder", "Summoning a thunderstorm that kills zombies", "Thunder^9claps ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\thunderclaps::ActivateWithChallangeProgress, blanco\actions\thunderclaps::CanUse);
    blanco\config::addNewKillstreak(11, "Rambo Mode", 35, 16, "nl_hud_kr15", "3 nades, ability to burn and tripled dmg for 40 seconds", "Rambo ^9Mode ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\rambo::ActivateWithChallangeProgress, blanco\actions\rambo::CanUse, blanco\utils::a(40));
    blanco\config::addNewKillstreak(12, "Defense Cannon", 40, 18, "nl_hud_kr14", "Automatic machine gun for 40 seconds", "Defense ^9Cannon ^4: ^9Plant ^4[^7" + key + "^4]", blanco\actions\defense_cannon::Activate, blanco\actions\defense_cannon::CanUse, blanco\utils::a(40));
    blanco\config::addNewKillstreak(10, "Grenade Launcher", 50, 20, "nl_hud_kr11", "Grenade launcher with 18 grenades", "Laun^9cher ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::Launcher);
    // blanco\config::addNewKillstreak(13, "EMP", 50, 22, "nl_hud_kr16", "Zombies will be harmless for 30 seconds", "E^9MP ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\emp::Activate, blanco\actions\emp::CanUse, a(30));
    blanco\config::addNewKillstreak(14, "Rocket", 75, 22, "nl_hud_kr17", "Powerful rocket launcher with 12 missiles", "Roc^9ket ^4: ^9Get ^4[^7" + key + "^4]", blanco\actions\weapons::Rocket);
    blanco\config::addNewKillstreak(13, "Raptor", 100, 28, "nl_hud_kr21", "Following a player, combat drone for 25 seconds", "Rap^9tor ^4: ^9Activate ^4[^7" + key + "^4]", blanco\actions\raptor::Activate, blanco\actions\raptor::CanUse);
    blanco\config::addNewKillstreak(15, "Nuke", 200, 30, "nl_hud_kr18", "Nuke will finish current map giving +500 score bonus", "Nu^9ke ^4: ^9Drop ^4[^7" + key + "^4]", blanco\actions\nuke::Activate, blanco\actions\nuke::CanUse);
    blanco\config::addNewKillstreak(16, "Drone", 9999, 999, "nl_hud_kr22", "Dusza bedzie szukal tego", "Dro^9ne ^4: ^9Drop ^4[^7" + key + "^4]", blanco\actions\drone::Activate, blanco\actions\drone::CanUse, blanco\utils::a(40));
}

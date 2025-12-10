Configure()
{
    level.PERK_assistHandEarningMultiplier = 2;
    level.PERK_ghostInvisibleExtensionSeconds = 3;
    level.PERK_assaultExtensionDurationMultiplier = 2;
    level.PERK_richEarningMultiplier = 1.3;
	level.PERK_hardlineNeededKillsMultiplier = 0.9;
    level.PERK_potatoGraterDamageMultiplier = 0.71;
    level.PERK_grenadeSupplyGrenadesCount = 10;
    level.PERK_spawnProtectionEscapeDuration = 10;
	level.PERK_immortalSelfDamageMultiplier = 0.05;
    level.PERK_protectLabel = &"^5Protect^9:^3 ";
    level.PERK_speedLabel = &"Speed^9:^3 ";
    level.PERK_jumpySpawnLabel = &"Jumpy Spawn^9:^3 ";
    level.PERK_potatoLabel = &"Potato^9:^3 ";
    level.PERK_nadeLabel = &"Zombie Nade^9:^3 ";
    level.PERK_highJumpLabel = &"High Jump^9:^3 ";
    level.PERK_toxicLabel = &"Toxic^9:^3 ";
    level.PERK_mutantLabel = &"Mutant^9:^3 ";
    level.PERK_heavyMutantLabel = &"Heavy Mutant^9:^3 ";
    level.PERK_armouredLabel = &"Armoured^9:^3 ";
	level.PERK_antiInviNadesLabel = &"Anti-Invi Nades^9:^3 ";
    level.PERK_bulletDodgeLabel = &"Bullet Dodge^9:^3 ";
    level.PERK_swooshLabel = &"Swoosh Jump^9:^3 ";
    level.PERK_toxicAuraLabel = &"Toxic Aura^9:^3 ";
    level.PERK_absorptionLabel = &"Absorption^9:^3 ";
    level.PERK_laserShader = "nl_laser";
    level.PERK_reconShader = "nl_hud_recon";
    level.PERK_explodeBulletChance = 4;
    level.PERK_explodeBulletFx = loadFx("fx/nl/nl_explodebullet.efx");
    level.PERK_explodeBulletRange = 100;
    level.PERK_explodeBulletDamage = 300;
    level.PERK_pistoleroDamageMultiplier = 1.5;

    preCacheString(level.PERK_protectLabel);
	preCacheString(level.PERK_speedLabel);
    preCacheString(level.PERK_jumpySpawnLabel);
	preCacheString(level.PERK_potatoLabel);
	preCacheString(level.PERK_nadeLabel);
	preCacheString(level.PERK_highJumpLabel);
	preCacheString(level.PERK_toxicLabel);
	preCacheString(level.PERK_mutantLabel);
	preCacheString(level.PERK_heavyMutantLabel);
	preCacheString(level.PERK_armouredLabel);
	preCacheString(level.PERK_antiInviNadesLabel);
	preCacheString(level.PERK_bulletDodgeLabel);
	preCacheString(level.PERK_swooshLabel);
	preCacheString(level.PERK_toxicAuraLabel);
	preCacheString(level.PERK_absorptionLabel);
    preCacheShader(level.PERK_laserShader);
    preCacheShader(level.PERK_reconShader);

	blanco\config::addNewPerk(1, "tactical", "Laser Dot", 4, "nl_hud_pe1", "Displays a Red Dot in the middle of the Screen");
	blanco\config::addNewPerk(2, "tactical", "Omniscient", 24, "nl_hud_pe21", "Displays the Health Bar for the last hit Zombie");
	blanco\config::addNewPerk(3, "tactical", "Recon", 44, "nl_hud_pe2", "Displays the nearest Zombie's distance & Detects Jumpy Spawn");
	blanco\config::addNewPerk(11, "tactical", "Gambler", 64, "nl_hud_pe52", "Improves Top-item Chances in Care Pack, HQ, and MysteryBox");
	blanco\config::addNewPerk(13, "tactical", "Assist Hand", 84, "nl_hud_pe53", "Doubles Money for Assists");
	blanco\config::addNewPerk(19, "tactical", "Random Tactical", 104, "nl_hud_pe19", "Selects a random Tactical Perk");
	blanco\config::addNewPerk(4, "tactical", "Ghost", 124, "nl_hud_pe11", "Adds 3 seconds of Invi & Removes Star overhead");
	blanco\config::addNewPerk(15, "tactical", "Assault Extension", 144, "nl_hud_pe54", "Doubles Browning MG & Sentry Gun time + Adds 1 Raptor's rocket");
	blanco\config::addNewPerk(5, "tactical", "Rich", 184, "nl_hud_pe22", "Increases Money for Kills with Weapons by 30 percent");
	blanco\config::addNewPerk(6, "tactical", "Hardline", 224, "nl_hud_pe10", "Reduces a number of Required Kills for a Killstreak by 10 percent");
	
	blanco\config::addNewPerk(21, "combat", "Pistolero", 12, "nl_hud_pe56", "Increases Damage of Beretta Pistol by 50 percent");
	blanco\config::addNewPerk(12, "combat", "Potato Grater", 32, "nl_hud_pe50", "Reduces Damage received from each Potato to 25 (-10)");
	blanco\config::addNewPerk(7, "combat", "Equipment", 52, "nl_hud_pe51", "Gives the Weapons Max Ammo and 3 Grenades at Spawn");
	blanco\config::addNewPerk(10, "combat", "Overkill", 72, "nl_hud_pe8", "Sets a Golden Desert Eagle as a Secondary Weapon");
	blanco\config::addNewPerk(14, "combat", "Grenade Supply", 92, "nl_hud_pe7", "Provides 10 Grenades at Spawn");
	blanco\config::addNewPerk(20, "combat", "Random Combat", 112, "nl_hud_pe20", "Selects a random Combat Perk");
	blanco\config::addNewPerk(8, "combat", "Escape", 132, "nl_hud_pe9", "Provides 10 seconds of Spawn Protection");
	blanco\config::addNewPerk(9, "combat", "Immortal", 152, "nl_hud_pe12", "Reduces Damage received from own Explosives by 95 percent");
	blanco\config::addNewPerk(16, "combat", "Sprint", 192, "nl_hud_pe55", "Allows Sprinting by holding the ^3F ^7button");
	blanco\config::addNewPerk(17, "combat", "Explode Bullets", 232, "nl_hud_pe6", "Provides a 4 percent chance for Bullets to Explode");
}


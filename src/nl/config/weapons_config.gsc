#include blanco\config;

Configure()
{
    // 1. How to add weapon?
    // defineWeapon(weaponId, name, displayName, type, kind, isEnabledForBots, isEnabledForSelection);
    // defineGrenade(weaponId, name);
    // defineNonSelectable(weaponId, name, kind);
    //      weaponId - must be unique, if weapon is ever removed no other weapon can have this id
    //      name - weapon file name, ex: "mp40_mp"
    //      displayName - weapon display name, ex: "MP40"
    //      type - one of the following values:
    //      - level.TYPE_PRIMARY
    //      - level.TYPE_SECONDARY
    //      - level.TYPE_ZOMBIE
    //      kind - one of the following values:
    //      - level.KIND_RIFLE
    //      - level.KIND_MACHINE_GUN
    //      - level.KIND_HEAVY
    //      - level.KIND_SECONDARY
    //      - level.KIND_ZOMBIE
    //      - level.KIND_SHOP
    //      - level.KIND_KILLSTREAK
    //      - level.KIND_SPECIAL
    //      isEnabledForBots - by default `botsEnable`, should the weapon be enabled for bots
    //      isEnabledForSelection - by default `rotationEnable` (when set to `rotationDisable` it means it is out of rotation)

    // 2. How to add purchase or rank requirement?
    // addWeaponPurchase(name, purchaseTab, purchaseId, tokensPrice, isEnabledForPurchase);
    // addWeaponRank(name, rank);
    //      name - weapon file name, ex: "mp40_mp"
    //      purchaseTab - purchase tab, same as in menu, ex: 2
    //      purchaseId - must be unique, if weapon is ever removed no other weapon can have this id
    //      tokensPrice - price in tokens, ex: 1000
    //      isEnabledForPurchase - by default `purchaseEnable` (when set to `purchaseDisable` it means it is going to be out of rotation soon)
    //      rank - required rank to select this weapon

    // 3. How to add weapon to mystery box?
    // addWeaponToMysteryBox(name, model, chance, gamblerChance);
    //      name - weapon file name, ex: "mp40_mp"
    //      model - world model of the weapon, ex: "xmodel/mp40_w"
    //      chance - chance to draw this weapon
    //      gamblerChance - chance to draw this weapon when using gambler perk


    // Pre settings
    botsEnable = true;
    botsDisable = false;
    rotationEnable = true;
    rotationDisable = false;
    purchaseEnable = true;
    purchaseDisable = false;

    // Rifles


    level.weapons_springfield = defineWeapon(3, "springfield_mp", "M1903 Springfield", level.TYPE_PRIMARY, level.KIND_RIFLE, botsDisable);
    addWeaponRank(level.weapons_springfield, 10);
	
    level.weapons_m1garand = defineWeapon(2, "m1garand_mp", "M1 Garand", level.TYPE_PRIMARY, level.KIND_RIFLE);
    addWeaponRank(level.weapons_m1garand, 15);

    level.weapons_g3 = defineWeapon(4, "g3_mp", "G3", level.TYPE_PRIMARY, level.KIND_RIFLE);
    addWeaponPurchase(level.weapons_g3, 1, 102, 2500);
    addWeaponToMysteryBox(level.weapons_g3, "xmodel/weapon_g3", 10, 10);

    level.weapons_barrett = defineWeapon(5, "barrett_mp", "Barrett M82", level.TYPE_PRIMARY, level.KIND_RIFLE);
    addWeaponPurchase(level.weapons_barrett, 1, 103, 4500);
    addWeaponToMysteryBox(level.weapons_barrett, "xmodel/m82_w", 10, 10);

    level.weapons_kar98k = defineWeapon(22, "kar98k_mp", "Kar98k", level.TYPE_PRIMARY, level.KIND_RIFLE, botsDisable);
    addWeaponRank(level.weapons_kar98k, 350);
    addWeaponToMysteryBox(level.weapons_kar98k, "xmodel/weapon_kAr98", 10, 20);

    level.weapons_intervention = defineWeapon(24, "intervention_mp", "M200 Intervention", level.TYPE_PRIMARY, level.KIND_RIFLE, botsDisable, rotationDisable);
    addWeaponPurchase(level.weapons_intervention, 1, 116, 7500, purchaseDisable);
    addWeaponToMysteryBox(level.weapons_intervention, "xmodel/weapon_intervention", 10, 10);

    level.weapons_m14ebr = defineWeapon(25, "m14ebr_mp", "Mk 14 EBR", level.TYPE_PRIMARY, level.KIND_RIFLE);
    addWeaponPurchase(level.weapons_m14ebr, 1, 117, 7500);
    addWeaponToMysteryBox(level.weapons_m14ebr, "xmodel/weapon_law_m14ebr", 10, 10);

    level.weapons_fal = defineWeapon(27, "fal_mp", "FAL", level.TYPE_PRIMARY, level.KIND_RIFLE);
    addWeaponPurchase(level.weapons_fal, 1, 119, 8500);
    addWeaponToMysteryBox(level.weapons_fal, "xmodel/oma_weapon_fal", 10, 10);
	
	level.weapons_kar98k_sniper = defineWeapon(33, "kar98k_sniper_mp", "Scoped Kar98k", level.TYPE_PRIMARY, level.KIND_RIFLE, botsDisable);
    addWeaponRank(level.weapons_kar98k_sniper, 200);
    addWeaponToMysteryBox(level.weapons_kar98k_sniper, "xmodel/weapon_kar98_scoped", 10, 40);

    // Machine Guns
    level.weapons_mp40 = defineWeapon(6, "mp40_mp", "MP 40", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponRank(level.weapons_mp40, 1);

    level.weapons_mp44 = defineWeapon(7, "mp44_mp", "MP 44", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponRank(level.weapons_mp44, 25);

    level.weapons_sig = defineWeapon(9, "sig_mp", "SIG SG 552", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase(level.weapons_sig, 2, 105, 3500);

    level.weapons_ak47 = defineWeapon(10, "ak47_mp", "AK-47", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase(level.weapons_ak47, 2, 106, 4500);
    addWeaponToMysteryBox(level.weapons_ak47, "xmodel/ak47_w", 10, 10);

    level.weapons_mp5 = defineWeapon(18, "mp5_mp", "MP5", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN, botsDisable, rotationDisable);
    addWeaponPurchase(level.weapons_mp5, 2, 111, 11500, purchaseDisable);
    addWeaponToMysteryBox(level.weapons_mp5, "xmodel/mp5_w", 10, 10);

    level.weapons_thompson = defineWeapon(11, "thompson_mp", "Thompson", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponRank(level.weapons_thompson, 100);
    addWeaponToMysteryBox(level.weapons_thompson, "xmodel/weapon_thompson", 10, 40);

    level.weapons_scar = defineWeapon(20, "scar_mp", "SCAR-H", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase(level.weapons_scar, 2, 113, 9500);
    addWeaponToMysteryBox(level.weapons_scar, "xmodel/weapon_mw2_scar", 10, 10);

    level.weapons_p90 = defineWeapon(23, "p90_mp", "P90", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase(level.weapons_p90, 2, 115, 6500);
    addWeaponToMysteryBox(level.weapons_p90, "xmodel/weapon_p90sd", 10, 10);

    level.weapons_m4 = defineWeapon(26, "m4_mp", "M4", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase(level.weapons_m4, 2, 118, 10500);
    addWeaponToMysteryBox(level.weapons_m4, "xmodel/m4_w", 10, 10);

    level.weapons_famas = defineWeapon(29, "famas_mp", "FAMAS", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase(level.weapons_famas, 2, 121, 13500);
    addWeaponToMysteryBox(level.weapons_famas, "xmodel/weapon_famas", 10, 10);

    level.weapons_g36c = defineWeapon(30, "g36c_mp", "G36C", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase(level.weapons_g36c, 2, 122, 12500);
    addWeaponToMysteryBox(level.weapons_g36c, "xmodel/weapon_g36c", 10, 10);
	
	level.weapons_pps = defineWeapon(34, "pps_mp", "PPS-43", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponRank(level.weapons_pps, 250);
    addWeaponToMysteryBox(level.weapons_pps, "xmodel/weapon_pps43", 10, 40);


    // Heavy weapons
    level.weapons_bar = defineWeapon(12, "bar_mp", "M1918 BAR", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponRank(level.weapons_bar, 5);

    level.weapons_winchester = defineWeapon(14, "winchester_mp", "Winchester 1200", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponPurchase(level.weapons_winchester, 3, 107, 3500);
    addWeaponToMysteryBox(level.weapons_winchester, "xmodel/winchester_w", 10, 10);

    level.weapons_rpk = defineWeapon(13, "rpk_mp", "RPK-74", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponPurchase(level.weapons_rpk, 3, 108, 5500);

    level.weapons_saw = defineWeapon(15, "saw_mp", "M249 SAW", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponPurchase(level.weapons_saw, 3, 109, 7500);
    addWeaponToMysteryBox(level.weapons_saw, "xmodel/weapon_m249", 10, 10);

    level.weapons_bren = defineWeapon(17, "bren_mp", "Bren", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponRank(level.weapons_bren, 150);
    addWeaponToMysteryBox(level.weapons_bren, "xmodel/weapon_bren", 10, 40);

    level.weapons_aa12 = defineWeapon(19, "aa12_mp", "AA-12", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponPurchase(level.weapons_aa12, 3, 112, 7500);
    addWeaponToMysteryBox(level.weapons_aa12, "xmodel/weapon_aa_12", 10, 10);
	
	level.weapons_model_1887 = defineWeapon(31, "model_1887_mp", "Model 1887", level.TYPE_PRIMARY, level.KIND_HEAVY, botsDisable, rotationDisable);
    addWeaponPurchase(level.weapons_model_1887, 3, 123, 6500, purchaseDisable);
    addWeaponToMysteryBox(level.weapons_model_1887, "xmodel/weapon_model1887", 10, 10);
	
	level.weapons_doublebarrel = defineWeapon(32, "doublebarrel_mp", "Double Barrel", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponPurchase(level.weapons_doublebarrel, 3, 124, 9500);
    addWeaponToMysteryBox(level.weapons_doublebarrel, "xmodel/weapon_doublebarrel", 10, 10);
	
	level.weapons_shotgun = defineWeapon(35, "shotgun_mp", "Trench Gun", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponRank(level.weapons_shotgun, 300);
    addWeaponToMysteryBox(level.weapons_shotgun, "xmodel/weapon_trenchgun", 10, 40);


    // Special
    level.weapons_tesla = defineWeapon(16, "tesla_mp", "Tesla Gun", level.TYPE_PRIMARY, level.KIND_SPECIAL);
	addWeaponPurchase(level.weapons_tesla, 4, 110, 14500);
    addWeaponToMysteryBox(level.weapons_tesla, "xmodel/superweap_worldmodel", 10, 40);

    level.weapons_raygun = defineWeapon(69, "raygun_mp", "Raygun", level.TYPE_PRIMARY, level.KIND_SPECIAL);
    addWeaponToMysteryBox(level.weapons_raygun, "xmodel/van_raygun", 10, 40);

	level.weapons_crossbow = defineWeapon(70, "crossbow_mp", "Crossbow", level.TYPE_PRIMARY, level.KIND_SPECIAL);
    addWeaponRank(level.weapons_crossbow, level.PATRON_REQUIRED);

    // Secondary weapons
    level.weapons_beretta = defineWeapon(61, "beretta_mp", "Beretta", level.TYPE_SECONDARY, level.KIND_SECONDARY, botsDisable);
    addWeaponRank(level.weapons_beretta, 1);

    level.weapons_deagle = defineWeapon(67, "deagle_mp", "Desert Eagle", level.TYPE_SECONDARY, level.KIND_SECONDARY, botsDisable);
    addWeaponRank(level.weapons_deagle, 10);

    level.weapons_bashbat = defineWeapon(68, "bashbat_mp", "Bash King Bat", level.TYPE_SECONDARY, level.KIND_SECONDARY, botsDisable);
    addWeaponRank(level.weapons_bashbat, level.VIP_REQUIRED);


    // Zombie weapons
    level.weapons_hbat = defineWeapon(82, "hbat_mp", "Baseball Bat", level.TYPE_ZOMBIE, level.KIND_ZOMBIE, botsDisable);
    addWeaponRank(level.weapons_hbat, 1);

    level.weapons_axe = defineWeapon(84, "axe_mp", "Axe", level.TYPE_ZOMBIE, level.KIND_ZOMBIE, botsDisable);
    addWeaponRank(level.weapons_axe, 50);

    level.weapons_knife = defineWeapon(83, "knife_mp", "Knife", level.TYPE_ZOMBIE, level.KIND_ZOMBIE, botsDisable);
    addWeaponRank(level.weapons_knife, 75);


    // Grenades
    level.weapons_potato = defineGrenade(91, "potato_mp");
    level.weapons_grenade = defineGrenade(92, "grenade_mp");
    level.weapons_big_nade = defineGrenade(93, "big_nade_mp");
    level.weapons_dummy = defineGrenade(94, "dummy_mp");
    level.weapons_zom_nade = defineGrenade(95, "zom_nade_mp");
    level.weapons_body = defineGrenade(96, "body_mp");

    // Killstreak
	level.weapons_thunder = defineNonSelectable(101, "thunder_mp", level.KIND_SHOP);
    level.weapons_30cal_stand = defineNonSelectable(110, "30cal_stand_mp", level.KIND_KILLSTREAK);
    level.weapons_rocket = defineNonSelectable(111, "rocket_mp", level.KIND_KILLSTREAK);
    level.weapons_launcher = defineNonSelectable(112, "launcher_mp", level.KIND_KILLSTREAK);
    level.weapons_panzerschreck = defineNonSelectable(113, "panzerschreck_mp", level.KIND_KILLSTREAK);
    level.weapons_det = defineNonSelectable(114, "det_mp", level.KIND_KILLSTREAK);

    level.weapons_explode = defineNonSelectable(116, "explode_mp", level.KIND_KILLSTREAK);
    level.weapons_nuke = defineNonSelectable(118, "nuke_mp", level.KIND_KILLSTREAK);
    level.weapons_fire = defineNonSelectable(120, "fire_mp", level.KIND_KILLSTREAK);
    level.weapons_raptor = defineNonSelectable(121, "raptor_mp", level.KIND_KILLSTREAK);
    level.weapons_drone = defineNonSelectable(128, "drone_mp", level.KIND_KILLSTREAK);


    // Other
    level.weapons_minigun = defineNonSelectable(123, "minigun_mp", level.KIND_OTHER);
    level.weapons_binoculars = defineNonSelectable(125, "binoculars_mp", level.KIND_OTHER);
    level.weapons_wunderwaffe = defineNonSelectable(126, "wunderwaffe_mp", level.KIND_OTHER);
    addWeaponToMysteryBox(level.weapons_wunderwaffe, "xmodel/weapon_wunderwaffe_dg2", 50, 150);


    // Final configuration
    level.DEFAULT_PISTOL = 61;
    level.DEFAULT_WEAPON = 6;
    level.DEFAULT_ZOMBIE_WEAPON = 82;
	level.ZOMBIFY_KILLFEED_WEAPON_NAME = "hbat_mp";
    level.mysteryboxTeddyChance = 85;
    level.mysteryboxTeddyChanceGambler = 20;
}

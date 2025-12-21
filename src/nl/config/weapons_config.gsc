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


    defineWeapon(3, "springfield_mp", "M1903 Springfield", level.TYPE_PRIMARY, level.KIND_RIFLE, botsDisable);
    addWeaponRank("springfield_mp", 10);
	
    defineWeapon(2, "m1garand_mp", "M1 Garand", level.TYPE_PRIMARY, level.KIND_RIFLE);
    addWeaponRank("m1garand_mp", 15);

    defineWeapon(4, "g3_mp", "G3", level.TYPE_PRIMARY, level.KIND_RIFLE);
    addWeaponPurchase("g3_mp", 1, 102, 2000);
    addWeaponToMysteryBox("g3_mp", "xmodel/weapon_g3", 10, 10);

    defineWeapon(5, "barrett_mp", "Barrett M82", level.TYPE_PRIMARY, level.KIND_RIFLE);
    addWeaponPurchase("barrett_mp", 1, 103, 3600);
    addWeaponToMysteryBox("barrett_mp", "xmodel/m82_w", 10, 10);

    defineWeapon(22, "kar98k_mp", "Kar98k", level.TYPE_PRIMARY, level.KIND_RIFLE, botsDisable);
    addWeaponRank("kar98k_mp", 350);
    addWeaponToMysteryBox("kar98k_mp", "xmodel/weapon_kAr98", 10, 20);

    defineWeapon(24, "intervention_mp", "M200 Intervention", level.TYPE_PRIMARY, level.KIND_RIFLE, botsDisable);
    addWeaponPurchase("intervention_mp", 1, 116, 6000);
    addWeaponToMysteryBox("intervention_mp", "xmodel/weapon_intervention", 10, 10);

    defineWeapon(25, "m14ebr_mp", "Mk 14 EBR", level.TYPE_PRIMARY, level.KIND_RIFLE);
    addWeaponPurchase("m14ebr_mp", 1, 117, 6000);
    addWeaponToMysteryBox("m14ebr_mp", "xmodel/weapon_law_m14ebr", 10, 10);

    defineWeapon(27, "fal_mp", "FAL", level.TYPE_PRIMARY, level.KIND_RIFLE, botsDisable, rotationDisable);
    addWeaponPurchase("fal_mp", 1, 119, 6800, purchaseDisable);
    addWeaponToMysteryBox("fal_mp", "xmodel/oma_weapon_fal", 10, 10);
	
	defineWeapon(33, "kar98k_sniper_mp", "Scoped Kar98k", level.TYPE_PRIMARY, level.KIND_RIFLE, botsDisable);
    addWeaponRank("kar98k_sniper_mp", 200);
    addWeaponToMysteryBox("kar98k_sniper_mp", "xmodel/weapon_kar98_scoped", 10, 40);

    // Machine Guns
    defineWeapon(6, "mp40_mp", "MP 40", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponRank("mp40_mp", 1);

    defineWeapon(7, "mp44_mp", "MP 44", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponRank("mp44_mp", 25);

    defineWeapon(9, "sig_mp", "SIG SG 552", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase("sig_mp", 2, 105, 2800);

    defineWeapon(10, "ak47_mp", "AK-47", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase("ak47_mp", 2, 106, 3600);
    addWeaponToMysteryBox("ak47_mp", "xmodel/ak47_w", 10, 10);

    defineWeapon(18, "mp5_mp", "MP5", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase("mp5_mp", 2, 111, 9200);
    addWeaponToMysteryBox("mp5_mp", "xmodel/mp5_w", 10, 10);

    defineWeapon(11, "thompson_mp", "Thompson", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponRank("thompson_mp", 100);
    addWeaponToMysteryBox("thompson_mp", "xmodel/weapon_thompson", 10, 40);

    defineWeapon(20, "scar_mp", "SCAR-H", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase("scar_mp", 2, 113, 7600);
    addWeaponToMysteryBox("scar_mp", "xmodel/weapon_mw2_scar", 10, 10);

    defineWeapon(23, "p90_mp", "P90", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase("p90_mp", 2, 115, 5200);
    addWeaponToMysteryBox("p90_mp", "xmodel/weapon_p90sd", 10, 10);

    defineWeapon(26, "m4_mp", "M4", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase("m4_mp", 2, 118, 8400);
    addWeaponToMysteryBox("m4_mp", "xmodel/m4_w", 10, 10);

    defineWeapon(29, "famas_mp", "FAMAS", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponPurchase("famas_mp", 2, 121, 13500);
    addWeaponToMysteryBox("famas_mp", "xmodel/weapon_famas", 10, 10);

    defineWeapon(30, "g36c_mp", "G36C", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN, botsDisable, rotationDisable);
    addWeaponPurchase("g36c_mp", 2, 122, 12500, purchaseDisable);
    addWeaponToMysteryBox("g36c_mp", "xmodel/weapon_g36c", 10, 10);
	
	defineWeapon(34, "pps_mp", "PPS-43", level.TYPE_PRIMARY, level.KIND_MACHINE_GUN);
    addWeaponRank("pps_mp", 250);
    addWeaponToMysteryBox("pps_mp", "xmodel/weapon_pps43", 10, 40);


    // Heavy weapons
    defineWeapon(12, "bar_mp", "M1918 BAR", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponRank("bar_mp", 5);

    defineWeapon(14, "winchester_mp", "Winchester 1200", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponPurchase("winchester_mp", 3, 107, 2800);
    addWeaponToMysteryBox("winchester_mp", "xmodel/winchester_w", 10, 10);

    defineWeapon(13, "rpk_mp", "RPK-74", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponPurchase("rpk_mp", 3, 108, 4400);

    defineWeapon(15, "saw_mp", "M249 SAW", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponPurchase("saw_mp", 3, 109, 6000);
    addWeaponToMysteryBox("saw_mp", "xmodel/weapon_m249", 10, 10);

    defineWeapon(17, "bren_mp", "Bren", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponRank("bren_mp", 150);
    addWeaponToMysteryBox("bren_mp", "xmodel/weapon_bren", 10, 40);

    defineWeapon(19, "aa12_mp", "AA-12", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponPurchase("aa12_mp", 3, 112, 6000);
    addWeaponToMysteryBox("aa12_mp", "xmodel/weapon_aa_12", 10, 10);
	
	defineWeapon(31, "model_1887_mp", "Model 1887", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponPurchase("model_1887_mp", 3, 123, 5200);
    addWeaponToMysteryBox("model_1887_mp", "xmodel/weapon_model1887", 10, 10);
	
	defineWeapon(32, "doublebarrel_mp", "Double Barrel", level.TYPE_PRIMARY, level.KIND_HEAVY, botsDisable, rotationDisable);
    addWeaponPurchase("doublebarrel_mp", 3, 124, 7600, purchaseDisable);
    addWeaponToMysteryBox("doublebarrel_mp", "xmodel/weapon_doublebarrel", 10, 10);
	
	defineWeapon(35, "shotgun_mp", "Trench Gun", level.TYPE_PRIMARY, level.KIND_HEAVY);
    addWeaponRank("shotgun_mp", 300);
    addWeaponToMysteryBox("shotgun_mp", "xmodel/weapon_trenchgun", 10, 40);


    // Special
    defineWeapon(16, "tesla_mp", "Tesla Gun", level.TYPE_PRIMARY, level.KIND_SPECIAL);
	addWeaponPurchase("tesla_mp", 4, 110, 14500);
    addWeaponToMysteryBox("tesla_mp", "xmodel/superweap_worldmodel", 10, 40);

    defineWeapon(69, "raygun_mp", "Raygun", level.TYPE_PRIMARY, level.KIND_SPECIAL);
    addWeaponToMysteryBox("raygun_mp", "xmodel/van_raygun", 10, 40);


    // Secondary weapons
    defineWeapon(61, "beretta_mp", "Beretta", level.TYPE_SECONDARY, level.KIND_SECONDARY, botsDisable);
    addWeaponRank("beretta_mp", 1);

    defineWeapon(67, "deagle_mp", "Desert Eagle", level.TYPE_SECONDARY, level.KIND_SECONDARY, botsDisable);
    addWeaponRank("deagle_mp", 10);

    defineWeapon(68, "bashbat_mp", "Bash King Bat", level.TYPE_SECONDARY, level.KIND_SECONDARY, botsDisable);
    addWeaponRank("bashbat_mp", level.VIP_REQUIRED);


    // Zombie weapons
    defineWeapon(82, "hbat_mp", "Baseball Bat", level.TYPE_ZOMBIE, level.KIND_ZOMBIE, botsDisable);
    addWeaponRank("hbat_mp", 1);

    defineWeapon(84, "axe_mp", "Axe", level.TYPE_ZOMBIE, level.KIND_ZOMBIE, botsDisable);
    addWeaponRank("axe_mp", 50);

    defineWeapon(83, "knife_mp", "Knife", level.TYPE_ZOMBIE, level.KIND_ZOMBIE, botsDisable);
    addWeaponRank("knife_mp", 75);


    // Grenades
    defineGrenade(91, "potato_mp");
    defineGrenade(92, "grenade_mp");
    defineGrenade(93, "big_nade_mp");
    defineGrenade(94, "dummy_mp");
    defineGrenade(95, "zom_nade_mp");
    defineGrenade(96, "body_mp");

    // Killstreak
	defineNonSelectable(101, "thunder_mp", level.KIND_SHOP);
    defineNonSelectable(110, "30cal_stand_mp", level.KIND_KILLSTREAK);
    defineNonSelectable(111, "rocket_mp", level.KIND_KILLSTREAK);
    defineNonSelectable(112, "launcher_mp", level.KIND_KILLSTREAK);
    defineNonSelectable(113, "panzerschreck_mp", level.KIND_KILLSTREAK);
    defineNonSelectable(114, "det_mp", level.KIND_KILLSTREAK);

    defineNonSelectable(116, "explode_mp", level.KIND_KILLSTREAK);
    defineNonSelectable(118, "nuke_mp", level.KIND_KILLSTREAK);
    defineNonSelectable(120, "fire_mp", level.KIND_KILLSTREAK);
    defineNonSelectable(121, "raptor_mp", level.KIND_KILLSTREAK);
    defineNonSelectable(128, "drone_mp", level.KIND_KILLSTREAK);


    // Other
    defineNonSelectable(123, "minigun_mp", level.KIND_OTHER);
    defineNonSelectable(125, "binoculars_mp", level.KIND_OTHER);
    defineNonSelectable(126, "wunderwaffe_mp", level.KIND_OTHER);
    addWeaponToMysteryBox("wunderwaffe_mp", "xmodel/weapon_wunderwaffe_dg2", 50, 150);


    // Final configuration
    level.DEFAULT_PISTOL = 61;
    level.DEFAULT_WEAPON = 6;
    level.DEFAULT_ZOMBIE_WEAPON = 82;
	level.ZOMBIFY_KILLFEED_WEAPON_NAME = "hbat_mp";
    level.mysteryboxTeddyChance = 85;
    level.mysteryboxTeddyChanceGambler = 20;
}

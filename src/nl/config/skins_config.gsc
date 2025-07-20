
Configure()
{
    // (!) Do NOT ever change hunter skin IDs

    // Shared definitions
	germanAfricaHeads[0] = "head_german_afrca_christoph";
	germanAfricaHeads[1] = "head_german_afrca_eric";
	germanAfricaHeads[2] = "head_german_afrca_josh";
	germanNormandyHeads[0] = "head_german_normandy_christoph";
	germanNormandyHeads[1] = "head_german_normandy_eric";
	germanNormandyHeads[2] = "head_german_normandy_ericp";
	germanNormandyHeads[3] = "head_german_normandy_josh";
	britishAfricaBodies[0] = "playerbody_british_africa01";
	britishAfricaBodies[1] = "playerbody_british_africa02";
	britishHeads[0] = "head_british_chance";
	britishHeads[1] = "head_british_paul";
	britishHeads[2] = "head_british_joel";
	britishHeads[3] = "head_british_boon";
	britishHeads[4] = "head_british_wellington";
	britishNormandyBodies[0] = "playerbody_british_normandy01";
	britishNormandyBodies[1] = "playerbody_british_normandy02";
	britishNormandyBodies[2] = "playerbody_british_normandy03";
	britishNormandyBodies[3] = "playerbody_british_normandy04";
	americanNormandyBodies[0] = "playerbody_american_normandy01";
	americanNormandyBodies[1] = "playerbody_american_normandy02";
	americanNormandyBodies[2] = "playerbody_american_normandy03";
	americanNormandyBodies[3] = "playerbody_american_normandy04";
	americanNormandyBodies[4] = "playerbody_american_normandy05";
	americanNormandyBodies[5] = "playerbody_american_normandy06";
	americanNormandyBodies[6] = "playerbody_american_normandy07";
	americanNormandyBodies[7] = "playerbody_american_normandy08";
	americanHeads[0] = "head_us_ranger_frank";
	americanHeads[1] = "head_us_ranger_david";
	americanHeads[2] = "head_us_ranger_mo";
	americanHeads[3] = "head_us_ranger_wolf";
	russianCoatBodies[0] = "playerbody_russian_coat01";
	russianCoatBodies[1] = "playerbody_russian_coat02";
	russianCoatBodies[2] = "playerbody_russian_coat03";
	russianCoatBodies[3] = "playerbody_russian_coat04";
	russianCoatBodies[4] = "playerbody_russian_coat05";
	russianHeads[0] = "head_russian_winter_alex";
	russianHeads[1] = "head_russian_winter_datien";
	russianHeads[2] = "head_russian_winter_jesse";
	russianHeads[3] = "head_russian_winter_jon";
	russianHeads[4] = "head_russian_winter_volsky";
	russianCoatHelmets[0] = "helmet_russian_trench_a_hat";
	russianCoatHelmets[1] = "helmet_russian_trench_b_hat";
	russianCoatHelmets[2] = "helmet_russian_trench_c_hat";
	russianPaddedBodies[0] = "playerbody_russian_padded01";
	russianPaddedBodies[1] = "playerbody_russian_padded02";
	russianPaddedHelmets[0] = "helmet_russian_padded_a";
	russianPaddedHelmets[1] = "helmet_russian_padded_b";
    nlGreenHelmets[0] = "helmet_green_nl";
    nlGreenHelmets[1] = "helmet_green_nl2";

    // Skins for ranks
    level.SKINS_defaultHunter = hunterSkin(6, "american_normandy", americanNormandyBodies, "viewmodel_hands", "american", americanHeads, "helmet_us_ranger_generic");
    hunterSkin(3, "german_normandy", "playerbody_german_normandy01", "viewmodel_hands_german", "german", germanNormandyHeads, "helmet_german_normandy");
    enableSkinForRank(3, 10);
    hunterSkin(5, "british_normandy", britishNormandyBodies, "viewmodel_hands_british", "british", britishHeads, "helmet_british_normandy");
    enableSkinForRank(5, 20);
    hunterSkin(9, "russian_padded", russianPaddedBodies, "viewmodel_hands_russian", "russian", russianHeads, russianPaddedHelmets);
    enableSkinForRank(9, 30);
    hunterSkin(8, "german_winter_dark", "playerbody_german_winterdark_masked", "viewmodel_hands_german_winter", "german");
    enableSkinForRank(8, 40);
    hunterSkin(10, "german_winter_light", "playerbody_german_winterlight_hooded", "viewmodel_hands_german_winter", "german", "head_german_winter_jon");
    enableSkinForRank(10, 50);
    hunterSkin(2, "german_africa", "playerbody_german_africa01", "viewmodel_hands_german_afrika", "german", germanAfricaHeads, "helmet_german_africa");
    enableSkinForRank(2, 60);
    hunterSkin(4, "british_africa", britishAfricaBodies, "viewmodel_hands_british_bare", "british", britishHeads, "helmet_british_afrca");
    enableSkinForRank(4, 70);
    hunterSkin(7, "russian_coat", russianCoatBodies, "viewmodel_hands_russian", "russian", russianHeads, russianCoatHelmets);
    enableSkinForRank(7, 80);
    hunterSkin(11, "russian_diana", "character_russian_diana_medic", "viewmodel_hands_russian", "russian");
    enableSkinForRank(11, 100);

    // Zombies
    level.SKINS_defaultZombie = zombieSkin(1, "iwx_xenonnazi", "iwx_xenonnazi", "viewmodel_hands_german_winter");
    level.SKINS_mutant = zombieSkin(1001, "iwx_slasher", "iwx_slasher", "viewmodel_hands_british_bare");
    level.SKINS_heavyMutant = zombieSkin(1002, "vanfreddyZ", "vanfreddyZ", "viewmodel_hands_cloth");
    level.SKINS_speed = zombieSkin(1003, "charple", "charple");
    level.SKINS_armoured = zombieSkin(1004, "vanfreddyAZ", "vanfreddyAZ", "viewmodel_hands_british_bare");
    level.SKINS_bulletDodge = zombieSkin(1005, "hoek_skeleton", "hoek_skeleton", "viewmodel_hands_british_bare");
    level.SKINS_absorption = zombieSkin(1006, "hoek_alien_solider", "hoek_alien_solider", "viewmodel_hands_british_bare");
    level.SKINS_jumpySpawn = zombieSkin(1007, "zombie", "zombie");
    level.SKINS_jumpySpawned = zombieSkin(1008, "zk_gho", "zk_gho");
    level.SKINS_toxic = zombieSkin(1009, "zk_hazmat_zombie", "zk_hazmat_zombie", "viewmodel_hands_yellow");
    level.SKINS_highJump = zombieSkin(1010, "zk_spiderman", "zk_spiderman");
    level.SKINS_swoosh = zombieSkin(1011, "zk_chimp", "zk_chimp" "viewmodel_hands_yellow");

    // Purchasables
    hunterSkin(13, "secret_service", "van_usservice", "american");
    enableSkinForPurchase(13, 5000, "US Secret Service");
    hunterSkin(14, "vodka", "iwx_vodkach", "viewmodel_hands_cloth", "russian");
    enableSkinForPurchase(14, 7500, "Vodka");
    hunterSkin(15, "sas", "oma_sas_playermodel", "viewhands_usmc4", "british");
    enableSkinForPurchase(15, 5000, "SAS");
    hunterSkin(16, "neo", "van_neo_body", "viewmodel_hands_british_wet", "american");
    enableSkinForPurchase(16, 3500, "Neo");
    hunterSkin(17, "tobby", "iwx_tobbych", "viewmodel_hands_cloth", "american");
    enableSkinForPurchase(17, 3500, "UNSC Marine");
    hunterSkin(18, "joker", "van_jokerb", "viewmodel_hands_cloth", "american");
    enableSkinForPurchase(18, 7500, "Joker");
    hunterSkin(19, "sniper", "oma_sniper_rebels", "russian");
    enableSkinForPurchase(19, 3500, "Sniper");
    hunterSkin(20, "niko", "oma_niko_bellic", "viewmodel_hands_cloth", "russian");
    enableSkinForPurchase(20, 7500, "Niko Bellic");
    hunterSkin(21, "masterchief", "van_mastercheifg", "viewhand_usmc_mw24", "american");
    enableSkinForPurchase(21, 15000, "Master Chief");
    hunterSkin(22, "daryl", "horror_wd_darly", "viewmodel_hands_british_bare", "american");
    enableSkinForPurchase(22, 7500, "Daryl Dixon");
    hunterSkin(41, "usa_seal", "oma_usa_seal", "viewhand_usmc_mw2", "american");
    enableSkinForPurchase(41, 10000, "USA Seal");

    hunterSkin(31, "nl_yellow", "nl_yellow", "viewmodel_hands_yellow", "american", americanHeads, "helmet_yellow_nl");
    enableSkinForPurchase(31, 2500, "American Ranger ^3Yellow");
    hunterSkin(32, "nl_blue", "nl_blue", "viewmodel_hands_blue", "british", britishHeads, "helmet_blue_nl");
    enableSkinForPurchase(32, 5000, "British Mate ^4Blue");
    hunterSkin(33, "nl_green", "nl_green", "viewmodel_hands_green", "russian", russianHeads, nlGreenHelmets);
    enableSkinForPurchase(33, 7500, "Russian Comrade ^2Green");
    hunterSkin(34, "nl_red", "nl_red", "viewmodel_hands_red", "german", germanNormandyHeads, "helmet_red_nl");
    enableSkinForPurchase(34, 10000, "German Soldat ^1Red");

    // Custom skins
    level.SKINS_patron = hunterSkin(12, "terminator", "iwx_mesterch", "viewmodel_hands_cloth", "american");
    hunterSkin(23, "santa", "zk_santa_claus", "viewmodel_hands_red", "american");
    level.NEXUS_SKIN_ID = hunterSkin(24, "british_normandy_price", "playerbody_british_normandy02", "viewmodel_hands_british", "british", "head_british_price");

    // Not used at this moment - available using !god command
    hunterSkin(42, "zk_john_cena", "zk_vm_john_cena", "american");
    hunterSkin(43, "zk_stormtrooper", "zk_vm_stormtrooper", "american");
    hunterSkin(44, "oma_farmgirl_plr", "oma_farmgirl_plr", "american");
    hunterSkin(45, "oma_nano_suit", "oma_nano_suit", "american");
    hunterSkin(46, "sazomb", "sazomb");
    hunterSkin(47, "oma_freeze_man", "oma_freeze_man");
    hunterSkin(48, "zk_zom2", "zk_zom2");
    hunterSkin(49, "zk_headless_zom", "zk_headless_zom");
    hunterSkin(52, "zk_clown_zombie", "zk_clown_zombie");

    // Bot skins
    enableBotHunterSkinSelection(13, 1);
}

// Helper functions
zombieSkin(id, name, bodyModel, viewModel)
{
    if (!isDefined(viewModel))
        viewModel = "viewmodel_hands_british_wet";

    return blanco\modules\skins::defineSkin(id, "zombie", name, bodyModel, undefined, undefined, viewModel);
}

hunterSkin(id, name, bodyModel, viewModel, voice, headModel, hatModel)
{
    if (!isDefined(viewModel))
        viewModel = "viewhands_usmc";

    if (!isDefined(voice))
        voice = "american";

    return blanco\modules\skins::defineSkin(id, voice, name, bodyModel, headModel, hatModel, viewModel);
}

enableSkinForRank(id, rank)
{
    return blanco\modules\skins::enableSkinForRank(id, rank);
}

enableSkinForPurchase(id, price, displayName)
{
    return blanco\modules\skins::enableSkinForPurchase(id, price, displayName);
}

enableBotHunterSkinSelection(id, chance)
{
    return blanco\modules\skins::enableBotHunterSkinSelection(id, chance);
}
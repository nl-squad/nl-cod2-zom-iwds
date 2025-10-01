Configure()
{
    // Configuration below
    level.DEATHSTREAK_speedHp = 200;
    level.DEATHSTREAK_speedGrade1Speed = 250;
    level.DEATHSTREAK_speedGrade2Speed = 270;
    level.DEATHSTREAK_speedGrade3Speed = 290;
	
	level.DEATHSTREAK_mutantExplodeAndFireDamageMultiplier = 0.9;
    level.DEATHSTREAK_mutantGrade1Hp = 550;
    level.DEATHSTREAK_mutantGrade2Hp = 600;
    level.DEATHSTREAK_mutantGrade3Hp = 650;

    level.DEATHSTREAK_heavyMutantExplodeAndFireDamageMultiplier = 0.8;
    level.DEATHSTREAK_heavyMutantGrade1Hp = 750;
    level.DEATHSTREAK_heavyMutantGrade2Hp = 800;
    level.DEATHSTREAK_heavyMutantGrade3Hp = 850;

    level.DEATHSTREAK_armouredHp = 800;
    level.DEATHSTREAK_armouredGrade1ExplodeAndFireDamageMultiplier = 0.6;
    level.DEATHSTREAK_armouredGrade2ExplodeAndFireDamageMultiplier = 0.5;
    level.DEATHSTREAK_armouredGrade3ExplodeAndFireDamageMultiplier = 0.4;
	
	level.DEATHSTREAK_bulletDodgeHp = 300;
    level.DEATHSTREAK_bulletDodgeGrade1Chance = 0.25;
    level.DEATHSTREAK_bulletDodgeGrade2Chance = 0.3;
    level.DEATHSTREAK_bulletDodgeGrade3Chance = 0.35;
	
	level.DEATHSTREAK_jumpySpawnHp = 300;
    level.DEATHSTREAK_jumpySpawnGrade1ProtectionTime = 1.5;
    level.DEATHSTREAK_jumpySpawnGrade2ProtectionTime = 2;
    level.DEATHSTREAK_jumpySpawnGrade3ProtectionTime = 2.5;
	
	level.DEATHSTREAK_swooshHp = 400;
    level.DEATHSTREAK_swooshGrade1MaxPower = 200;
    level.DEATHSTREAK_swooshGrade2MaxPower = 300;
    level.DEATHSTREAK_swooshGrade3MaxPower = 400;
	
	level.DEATHSTREAK_highJumpHp = 300;
	level.DEATHSTREAK_highJumpGrade1BoostPower = 5000;
    level.DEATHSTREAK_highJumpGrade2BoostPower = 6000;
    level.DEATHSTREAK_highJumpGrade3BoostPower = 7000;
	
	level.DEATHSTREAK_absorptionHp = 400;
    level.DEATHSTREAK_absorptionMaxHealth = 800;
	level.DEATHSTREAK_absorptionGrade1RadiusSquared = 96 * 96;
    level.DEATHSTREAK_absorptionGrade1TickDamage = 10;
    level.DEATHSTREAK_absorptionGrade2RadiusSquared = 128 * 120;
    level.DEATHSTREAK_absorptionGrade2TickDamage = 10;
    level.DEATHSTREAK_absorptionGrade3RadiusSquared = 160 * 160;
    level.DEATHSTREAK_absorptionGrade3TickDamage = 10;
	
	level.DEATHSTREAK_toxicHp = 300;
    level.DEATHSTREAK_toxicDamage = 15;
	level.DEATHSTREAK_toxicGrade1RadiusSquared = 64 * 64;
    level.DEATHSTREAK_toxicEffectLevel1 = loadFx("fx/nl/nl_toxic_64.efx");
    level.DEATHSTREAK_toxicGrade2RadiusSquared = 72 * 72;
    level.DEATHSTREAK_toxicEffectLevel2 = loadFx("fx/nl/nl_toxic_72.efx");
    level.DEATHSTREAK_toxicGrade3RadiusSquared = 80 * 80;
    level.DEATHSTREAK_toxicEffectLevel3 = loadFx("fx/nl/nl_toxic_80.efx");

    level.DEATHSTREAK_typeNothing = deathstreak("nothing", blanco\deathstreaks\generic::GrantNothing);
	level.DEATHSTREAK_typeSpeed = deathstreak("speed", blanco\deathstreaks\generic::GrantSpeed);
	level.DEATHSTREAK_typeMutant = deathstreak("mutant", blanco\deathstreaks\generic::GrantMutant);
    level.DEATHSTREAK_typeHeavyMutant = deathstreak("heavy_mutant", blanco\deathstreaks\generic::GrantHeavyMutant);
    level.DEATHSTREAK_typeArmoured = deathstreak("armoured", blanco\deathstreaks\generic::GrantArmoured);
	level.DEATHSTREAK_typeBulletDodge = deathstreak("bullet_dodge", blanco\deathstreaks\generic::GrantBulletDodge);
	level.DEATHSTREAK_typeJumpySpawn = deathstreak("jumpy", blanco\deathstreaks\jumpy_spawn::Grant);
	level.DEATHSTREAK_typeSwoosh = deathstreak("swoosh", blanco\deathstreaks\swoosh::Grant);
	level.DEATHSTREAK_typeHighJump = deathstreak("high_jump", blanco\deathstreaks\high_jump::Grant);
	level.DEATHSTREAK_typeAbsorption = deathstreak("absorption", blanco\deathstreaks\absorption::Grant);
	level.DEATHSTREAK_typeToxic = deathstreak("toxic", blanco\deathstreaks\toxic::Grant);
    level.DEATHSTREAK_typePotato = deathstreak("potato", blanco\deathstreaks\generic::GrantPotato);
	level.DEATHSTREAK_typeAntiInviNade = deathstreak("anti_invi", blanco\deathstreaks\generic::GrantAntiInviNade);
    level.DEATHSTREAK_typeNade = deathstreak("nade", blanco\deathstreaks\generic::GrantNade);
	level.DEATHSTREAK_upgradeChance = 20;

    // Stages
    s = stage(0, &"Zombie Power^4: ^9Basic ^4| ^7Next In^4: ^7");
    reward(s, 0, level.DEATHSTREAK_typeNothing, 1);
    reward(s, 10, level.DEATHSTREAK_typeSpeed, 1);
	reward(s, 10, level.DEATHSTREAK_typeSpeed, 2);
	reward(s, 0, level.DEATHSTREAK_typeSpeed, 3);
    reward(s, 10, level.DEATHSTREAK_typeMutant, 1);
	reward(s, 10, level.DEATHSTREAK_typeMutant, 2);
	reward(s, 0, level.DEATHSTREAK_typeMutant, 3);
	reward(s, 10, level.DEATHSTREAK_typeHeavyMutant, 1);
	reward(s, 5, level.DEATHSTREAK_typeHeavyMutant, 2);
	reward(s, 0, level.DEATHSTREAK_typeHeavyMutant, 3);
    reward(s, 0, level.DEATHSTREAK_typeArmoured, 1);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 2);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 3);
    reward(s, 15, level.DEATHSTREAK_typeHighJump, 1);
	reward(s, 10, level.DEATHSTREAK_typeHighJump, 2);
	reward(s, 0, level.DEATHSTREAK_typeHighJump, 3);
	reward(s, 10, level.DEATHSTREAK_typeBulletDodge, 1);
	reward(s, 5, level.DEATHSTREAK_typeBulletDodge, 2);
	reward(s, 0, level.DEATHSTREAK_typeBulletDodge, 3);
    reward(s, 10, level.DEATHSTREAK_typeJumpySpawn, 1);
	reward(s, 10, level.DEATHSTREAK_typeJumpySpawn, 2);
	reward(s, 0, level.DEATHSTREAK_typeJumpySpawn, 3);
    reward(s, 10, level.DEATHSTREAK_typeSwoosh, 1);
	reward(s, 5, level.DEATHSTREAK_typeSwoosh, 2);
	reward(s, 0, level.DEATHSTREAK_typeSwoosh, 3);
	reward(s, 10, level.DEATHSTREAK_typeAbsorption, 1);
	reward(s, 5, level.DEATHSTREAK_typeAbsorption, 2);
	reward(s, 0, level.DEATHSTREAK_typeAbsorption, 3);
    reward(s, 10, level.DEATHSTREAK_typeToxic, 1);
	reward(s, 5, level.DEATHSTREAK_typeToxic, 2);
	reward(s, 0, level.DEATHSTREAK_typeToxic, 3);
	reward(s, 15, level.DEATHSTREAK_typePotato, 1);
	reward(s, 10, level.DEATHSTREAK_typePotato, 2);
	reward(s, 10, level.DEATHSTREAK_typePotato, 3);
    reward(s, 5, level.DEATHSTREAK_typeAntiInviNade, 1);
    reward(s, 0, level.DEATHSTREAK_typeNade, 1);
	
    s = stage(10, &"Zombie Power^4: ^3Medium ^4| ^7Next In^4: ^7");
    reward(s, 0, level.DEATHSTREAK_typeNothing, 1);
    reward(s, 5, level.DEATHSTREAK_typeSpeed, 1);
	reward(s, 15, level.DEATHSTREAK_typeSpeed, 2);
	reward(s, 0, level.DEATHSTREAK_typeSpeed, 3);
    reward(s, 5, level.DEATHSTREAK_typeMutant, 1);
	reward(s, 15, level.DEATHSTREAK_typeMutant, 2);
	reward(s, 0, level.DEATHSTREAK_typeMutant, 3);
	reward(s, 5, level.DEATHSTREAK_typeHeavyMutant, 1);
	reward(s, 10, level.DEATHSTREAK_typeHeavyMutant, 2);
	reward(s, 0, level.DEATHSTREAK_typeHeavyMutant, 3);
    reward(s, 0, level.DEATHSTREAK_typeArmoured, 1);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 2);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 3);
    reward(s, 10, level.DEATHSTREAK_typeHighJump, 1);
	reward(s, 15, level.DEATHSTREAK_typeHighJump, 2);
	reward(s, 0, level.DEATHSTREAK_typeHighJump, 3);
	reward(s, 5, level.DEATHSTREAK_typeBulletDodge, 1);
	reward(s, 10, level.DEATHSTREAK_typeBulletDodge, 2);
	reward(s, 0, level.DEATHSTREAK_typeBulletDodge, 3);
    reward(s, 5, level.DEATHSTREAK_typeJumpySpawn, 1);
	reward(s, 15, level.DEATHSTREAK_typeJumpySpawn, 2);
	reward(s, 0, level.DEATHSTREAK_typeJumpySpawn, 3);
    reward(s, 5, level.DEATHSTREAK_typeSwoosh, 1);
	reward(s, 10, level.DEATHSTREAK_typeSwoosh, 2);
	reward(s, 0, level.DEATHSTREAK_typeSwoosh, 3);
	reward(s, 5, level.DEATHSTREAK_typeAbsorption, 1);
	reward(s, 10, level.DEATHSTREAK_typeAbsorption, 2);
	reward(s, 0, level.DEATHSTREAK_typeAbsorption, 3);
    reward(s, 5, level.DEATHSTREAK_typeToxic, 1);
	reward(s, 10, level.DEATHSTREAK_typeToxic, 2);
	reward(s, 0, level.DEATHSTREAK_typeToxic, 3);
	reward(s, 10, level.DEATHSTREAK_typePotato, 1);
	reward(s, 15, level.DEATHSTREAK_typePotato, 2);
	reward(s, 10, level.DEATHSTREAK_typePotato, 3);
    reward(s, 5, level.DEATHSTREAK_typeAntiInviNade, 1);
    reward(s, 0, level.DEATHSTREAK_typeNade, 1);

    s = stage(20, &"Zombie Power^4: ^8Strong ^4| ^7Next In^4: ^7");
    reward(s, 0, level.DEATHSTREAK_typeNothing, 1);
    reward(s, 0, level.DEATHSTREAK_typeSpeed, 1);
	reward(s, 10, level.DEATHSTREAK_typeSpeed, 2);
	reward(s, 5, level.DEATHSTREAK_typeSpeed, 3);
    reward(s, 0, level.DEATHSTREAK_typeMutant, 1);
	reward(s, 15, level.DEATHSTREAK_typeMutant, 2);
	reward(s, 5, level.DEATHSTREAK_typeMutant, 3);
	reward(s, 0, level.DEATHSTREAK_typeHeavyMutant, 1);
	reward(s, 10, level.DEATHSTREAK_typeHeavyMutant, 2);
	reward(s, 5, level.DEATHSTREAK_typeHeavyMutant, 3);
    reward(s, 0, level.DEATHSTREAK_typeArmoured, 1);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 2);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 3);
    reward(s, 5, level.DEATHSTREAK_typeHighJump, 1);
	reward(s, 15, level.DEATHSTREAK_typeHighJump, 2);
	reward(s, 5, level.DEATHSTREAK_typeHighJump, 3);
	reward(s, 0, level.DEATHSTREAK_typeBulletDodge, 1);
	reward(s, 10, level.DEATHSTREAK_typeBulletDodge, 2);
	reward(s, 5, level.DEATHSTREAK_typeBulletDodge, 3);
    reward(s, 0, level.DEATHSTREAK_typeJumpySpawn, 1);
	reward(s, 15, level.DEATHSTREAK_typeJumpySpawn, 2);
	reward(s, 5, level.DEATHSTREAK_typeJumpySpawn, 3);
    reward(s, 0, level.DEATHSTREAK_typeSwoosh, 1);
	reward(s, 10, level.DEATHSTREAK_typeSwoosh, 2);
	reward(s, 5, level.DEATHSTREAK_typeSwoosh, 3);
	reward(s, 0, level.DEATHSTREAK_typeAbsorption, 1);
	reward(s, 10, level.DEATHSTREAK_typeAbsorption, 2);
	reward(s, 5, level.DEATHSTREAK_typeAbsorption, 3);
    reward(s, 0, level.DEATHSTREAK_typeToxic, 1);
	reward(s, 10, level.DEATHSTREAK_typeToxic, 2);
	reward(s, 5, level.DEATHSTREAK_typeToxic, 3);
	reward(s, 10, level.DEATHSTREAK_typePotato, 1);
	reward(s, 10, level.DEATHSTREAK_typePotato, 2);
	reward(s, 15, level.DEATHSTREAK_typePotato, 3);
    reward(s, 5, level.DEATHSTREAK_typeAntiInviNade, 1);
    reward(s, 5, level.DEATHSTREAK_typeNade, 1);

	s = stage(30, &"Zombie Power^4: ^1Brutal ^4| ^7Next In^4: ^7");
    reward(s, 0, level.DEATHSTREAK_typeNothing, 1);
    reward(s, 0, level.DEATHSTREAK_typeSpeed, 1);
	reward(s, 5, level.DEATHSTREAK_typeSpeed, 2);
	reward(s, 10, level.DEATHSTREAK_typeSpeed, 3);
    reward(s, 0, level.DEATHSTREAK_typeMutant, 1);
	reward(s, 5, level.DEATHSTREAK_typeMutant, 2);
	reward(s, 15, level.DEATHSTREAK_typeMutant, 3);
	reward(s, 0, level.DEATHSTREAK_typeHeavyMutant, 1);
	reward(s, 5, level.DEATHSTREAK_typeHeavyMutant, 2);
	reward(s, 10, level.DEATHSTREAK_typeHeavyMutant, 3);
    reward(s, 10, level.DEATHSTREAK_typeArmoured, 1);
	reward(s, 5, level.DEATHSTREAK_typeArmoured, 2);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 3);
    reward(s, 0, level.DEATHSTREAK_typeHighJump, 1);
	reward(s, 15, level.DEATHSTREAK_typeHighJump, 2);
	reward(s, 5, level.DEATHSTREAK_typeHighJump, 3);
	reward(s, 0, level.DEATHSTREAK_typeBulletDodge, 1);
	reward(s, 5, level.DEATHSTREAK_typeBulletDodge, 2);
	reward(s, 10, level.DEATHSTREAK_typeBulletDodge, 3);
    reward(s, 0, level.DEATHSTREAK_typeJumpySpawn, 1);
	reward(s, 10, level.DEATHSTREAK_typeJumpySpawn, 2);
	reward(s, 10, level.DEATHSTREAK_typeJumpySpawn, 3);
    reward(s, 0, level.DEATHSTREAK_typeSwoosh, 1);
	reward(s, 5, level.DEATHSTREAK_typeSwoosh, 2);
	reward(s, 10, level.DEATHSTREAK_typeSwoosh, 3);
	reward(s, 0, level.DEATHSTREAK_typeAbsorption, 1);
	reward(s, 5, level.DEATHSTREAK_typeAbsorption, 2);
	reward(s, 10, level.DEATHSTREAK_typeAbsorption, 3);
    reward(s, 0, level.DEATHSTREAK_typeToxic, 1);
	reward(s, 5, level.DEATHSTREAK_typeToxic, 2);
	reward(s, 10, level.DEATHSTREAK_typeToxic, 3);
	reward(s, 0, level.DEATHSTREAK_typePotato, 1);
	reward(s, 10, level.DEATHSTREAK_typePotato, 2);
	reward(s, 15, level.DEATHSTREAK_typePotato, 3);
    reward(s, 5, level.DEATHSTREAK_typeAntiInviNade, 1);
    reward(s, 5, level.DEATHSTREAK_typeNade, 1);

    s = stage(40, &"Zombie Power^4: ^6Unstoppable");
    reward(s, 0, level.DEATHSTREAK_typeNothing, 1);
    reward(s, 0, level.DEATHSTREAK_typeSpeed, 1);
	reward(s, 0, level.DEATHSTREAK_typeSpeed, 2);
	reward(s, 15, level.DEATHSTREAK_typeSpeed, 3);
    reward(s, 0, level.DEATHSTREAK_typeMutant, 1);
	reward(s, 0, level.DEATHSTREAK_typeMutant, 2);
	reward(s, 15, level.DEATHSTREAK_typeMutant, 3);
	reward(s, 0, level.DEATHSTREAK_typeHeavyMutant, 1);
	reward(s, 0, level.DEATHSTREAK_typeHeavyMutant, 2);
	reward(s, 15, level.DEATHSTREAK_typeHeavyMutant, 3);
    reward(s, 5, level.DEATHSTREAK_typeArmoured, 1);
	reward(s, 10, level.DEATHSTREAK_typeArmoured, 2);
	reward(s, 5, level.DEATHSTREAK_typeArmoured, 3);
    reward(s, 0, level.DEATHSTREAK_typeHighJump, 1);
	reward(s, 15, level.DEATHSTREAK_typeHighJump, 2);
	reward(s, 5, level.DEATHSTREAK_typeHighJump, 3);
	reward(s, 0, level.DEATHSTREAK_typeBulletDodge, 1);
	reward(s, 0, level.DEATHSTREAK_typeBulletDodge, 2);
	reward(s, 15, level.DEATHSTREAK_typeBulletDodge, 3);
    reward(s, 0, level.DEATHSTREAK_typeJumpySpawn, 1);
	reward(s, 5, level.DEATHSTREAK_typeJumpySpawn, 2);
	reward(s, 15, level.DEATHSTREAK_typeJumpySpawn, 3);
    reward(s, 0, level.DEATHSTREAK_typeSwoosh, 1);
	reward(s, 0, level.DEATHSTREAK_typeSwoosh, 2);
	reward(s, 15, level.DEATHSTREAK_typeSwoosh, 3);
	reward(s, 0, level.DEATHSTREAK_typeAbsorption, 1);
	reward(s, 0, level.DEATHSTREAK_typeAbsorption, 2);
	reward(s, 15, level.DEATHSTREAK_typeAbsorption, 3);
    reward(s, 0, level.DEATHSTREAK_typeToxic, 1);
	reward(s, 0, level.DEATHSTREAK_typeToxic, 2);
	reward(s, 15, level.DEATHSTREAK_typeToxic, 3);
	reward(s, 0, level.DEATHSTREAK_typePotato, 1);
	reward(s, 10, level.DEATHSTREAK_typePotato, 2);
	reward(s, 15, level.DEATHSTREAK_typePotato, 3);
    reward(s, 5, level.DEATHSTREAK_typeAntiInviNade, 1);
    reward(s, 5, level.DEATHSTREAK_typeNade, 1);
}

// Helper functions
deathstreak(name, function)
{
	return blanco\deathstreaks\deathstreak::defineDeathstreak(name, function);
}

stage(minimumZombiePower, label)
{
    return blanco\deathstreaks\deathstreak::defineDeathstreakStage(minimumZombiePower, label);
}

reward(stage, chance, type, grade)
{
    return blanco\deathstreaks\deathstreak::defineDeathstreakReward(stage, chance, type, grade);
}

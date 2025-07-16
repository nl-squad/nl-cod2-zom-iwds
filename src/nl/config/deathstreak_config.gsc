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
	
	level.DEATHSTREAK_highJumpGrade1BoostPower = 5000;
    level.DEATHSTREAK_highJumpGrade2BoostPower = 6000;
    level.DEATHSTREAK_highJumpGrade3BoostPower = 7000;

	level.DEATHSTREAK_bulletDodgeHp = 300;
    level.DEATHSTREAK_bulletDodgeGrade1Chance = 0.15;
    level.DEATHSTREAK_bulletDodgeGrade2Chance = 0.2;
    level.DEATHSTREAK_bulletDodgeGrade3Chance = 0.25;

    level.DEATHSTREAK_jumpySpawnGrade1ProtectionTime = 1;
    level.DEATHSTREAK_jumpySpawnGrade2ProtectionTime = 2;
    level.DEATHSTREAK_jumpySpawnGrade3ProtectionTime = 3;
	
	level.DEATHSTREAK_swooshHp = 300;
    level.DEATHSTREAK_swooshGrade1MaxPower = 300;
    level.DEATHSTREAK_swooshGrade2MaxPower = 500;
    level.DEATHSTREAK_swooshGrade3MaxPower = 700;
	
	level.DEATHSTREAK_absorptionHp = 400;
    level.DEATHSTREAK_absorptionMaxHealth = 800;
	level.DEATHSTREAK_absorptionGrade1RadiusSquared = 96 * 96;
    level.DEATHSTREAK_absorptionGrade1TickDamage = 5;
    level.DEATHSTREAK_absorptionGrade2RadiusSquared = 128 * 120;
    level.DEATHSTREAK_absorptionGrade2TickDamage = 5;
    level.DEATHSTREAK_absorptionGrade3RadiusSquared = 160 * 160;
    level.DEATHSTREAK_absorptionGrade3TickDamage = 5;
	
	level.DEATHSTREAK_toxicHp = 300;
    level.DEATHSTREAK_toxicDamage = 15;
	level.DEATHSTREAK_toxicGrade1RadiusSquared = 64 * 64;
    level.DEATHSTREAK_toxicEffectLevel1 = loadFx("fx/nl/nl_toxic_64.efx");
    level.DEATHSTREAK_toxicGrade2RadiusSquared = 72 * 72;
    // level.DEATHSTREAK_toxicEffectLevel2 = loadFx("fx/nl/nl_toxic_72.efx");
    level.DEATHSTREAK_toxicGrade3RadiusSquared = 80 * 80;
    // level.DEATHSTREAK_toxicEffectLevel3 = loadFx("fx/nl/nl_toxic_80.efx");

    level.DEATHSTREAK_typeNothing = deathstreak("Nothing", blanco\deathstreaks\generic::GrantNothing);
    level.DEATHSTREAK_typeSpeed = deathstreak("Speed", blanco\deathstreaks\generic::GrantSpeed);
    level.DEATHSTREAK_typeJumpySpawn = deathstreak("JumpySpawn", blanco\deathstreaks\generic::GrantMutant);
    level.DEATHSTREAK_typePotato = deathstreak("Potato", blanco\deathstreaks\generic::GrantPotato);
    level.DEATHSTREAK_typeNade = deathstreak("Nade", blanco\deathstreaks\generic::GrantNade);
    level.DEATHSTREAK_typeHighJump = deathstreak("HighJump", blanco\deathstreaks\high_jump::Grant);
    level.DEATHSTREAK_typeMutant = deathstreak("Mutant", blanco\deathstreaks\generic::GrantMutant);
    level.DEATHSTREAK_typeHeavyMutant = deathstreak("HeavyMutant", blanco\deathstreaks\generic::GrantHeavyMutant);
    level.DEATHSTREAK_typeArmoured = deathstreak("Armoured", blanco\deathstreaks\generic::GrantArmoured);
    level.DEATHSTREAK_typeAntiInviNade = deathstreak("AntiInviNade", blanco\deathstreaks\generic::GrantAntiInviNade);
    level.DEATHSTREAK_typeBulletDodge = deathstreak("BulletDodge", blanco\deathstreaks\generic::GrantBulletDodge);
    level.DEATHSTREAK_typeSwoosh = deathstreak("Swoosh", blanco\deathstreaks\swoosh::Grant);
    level.DEATHSTREAK_typeToxic = deathstreak("Toxic", blanco\deathstreaks\toxic::Grant);
    level.DEATHSTREAK_typeAbsorption = deathstreak("Absorption", blanco\deathstreaks\absorption::Grant);

    // Stages
    s = stage(0, &"Zombie Power^9: ^7Basic^9, ^7Next In^9: ^7");
    reward(s, 15, level.DEATHSTREAK_typeNothing, 1);
    reward(s, 15, level.DEATHSTREAK_typeSpeed, 1);
	reward(s, 10, level.DEATHSTREAK_typeSpeed, 2);
	reward(s, 0, level.DEATHSTREAK_typeSpeed, 3);
    reward(s, 15, level.DEATHSTREAK_typeMutant, 1);
	reward(s, 10, level.DEATHSTREAK_typeMutant, 2);
	reward(s, 0, level.DEATHSTREAK_typeMutant, 3);
	reward(s, 5, level.DEATHSTREAK_typeHeavyMutant, 1);
	reward(s, 0, level.DEATHSTREAK_typeHeavyMutant, 2);
	reward(s, 0, level.DEATHSTREAK_typeHeavyMutant, 3);
    reward(s, 0, level.DEATHSTREAK_typeArmoured, 1);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 2);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 3);
    reward(s, 10, level.DEATHSTREAK_typeHighJump, 1);
	reward(s, 5, level.DEATHSTREAK_typeHighJump, 2);
	reward(s, 0, level.DEATHSTREAK_typeHighJump, 3);
	reward(s, 10, level.DEATHSTREAK_typeBulletDodge, 1);
	reward(s, 5, level.DEATHSTREAK_typeBulletDodge, 2);
	reward(s, 0, level.DEATHSTREAK_typeBulletDodge, 3);
    reward(s, 10, level.DEATHSTREAK_typeJumpySpawn, 1);
	reward(s, 5, level.DEATHSTREAK_typeJumpySpawn, 2);
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
	reward(s, 5, level.DEATHSTREAK_typePotato, 3);
    reward(s, 10, level.DEATHSTREAK_typeAntiInviNade, 1);
    reward(s, 0, level.DEATHSTREAK_typeNade, 1);
	
    s = stage(10, &"Zombie Power^9: ^3Medium^9, ^7Next In^9: ^7");
    reward(s, 5, level.DEATHSTREAK_typeNothing, 1);
    reward(s, 10, level.DEATHSTREAK_typeSpeed, 1);
	reward(s, 15, level.DEATHSTREAK_typeSpeed, 2);
	reward(s, 0, level.DEATHSTREAK_typeSpeed, 3);
    reward(s, 10, level.DEATHSTREAK_typeMutant, 1);
	reward(s, 15, level.DEATHSTREAK_typeMutant, 2);
	reward(s, 0, level.DEATHSTREAK_typeMutant, 3);
	reward(s, 10, level.DEATHSTREAK_typeHeavyMutant, 1);
	reward(s, 5, level.DEATHSTREAK_typeHeavyMutant, 2);
	reward(s, 0, level.DEATHSTREAK_typeHeavyMutant, 3);
    reward(s, 0, level.DEATHSTREAK_typeArmoured, 1);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 2);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 3);
    reward(s, 10, level.DEATHSTREAK_typeHighJump, 1);
	reward(s, 5, level.DEATHSTREAK_typeHighJump, 2);
	reward(s, 0, level.DEATHSTREAK_typeHighJump, 3);
	reward(s, 5, level.DEATHSTREAK_typeBulletDodge, 1);
	reward(s, 10, level.DEATHSTREAK_typeBulletDodge, 2);
	reward(s, 0, level.DEATHSTREAK_typeBulletDodge, 3);
    reward(s, 5, level.DEATHSTREAK_typeJumpySpawn, 1);
	reward(s, 10, level.DEATHSTREAK_typeJumpySpawn, 2);
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
	reward(s, 5, level.DEATHSTREAK_typePotato, 1);
	reward(s, 15, level.DEATHSTREAK_typePotato, 2);
	reward(s, 10, level.DEATHSTREAK_typePotato, 3);
    reward(s, 10, level.DEATHSTREAK_typeAntiInviNade, 1);
    reward(s, 0, level.DEATHSTREAK_typeNade, 1);

    s = stage(20, &"Zombie Power^9: ^8Strong^9, ^7Next In^9: ^7");
    reward(s, 0, level.DEATHSTREAK_typeNothing, 1);
    reward(s, 5, level.DEATHSTREAK_typeSpeed, 1);
	reward(s, 15, level.DEATHSTREAK_typeSpeed, 2);
	reward(s, 5, level.DEATHSTREAK_typeSpeed, 3);
    reward(s, 5, level.DEATHSTREAK_typeMutant, 1);
	reward(s, 15, level.DEATHSTREAK_typeMutant, 2);
	reward(s, 5, level.DEATHSTREAK_typeMutant, 3);
	reward(s, 10, level.DEATHSTREAK_typeHeavyMutant, 1);
	reward(s, 5, level.DEATHSTREAK_typeHeavyMutant, 2);
	reward(s, 0, level.DEATHSTREAK_typeHeavyMutant, 3);
    reward(s, 5, level.DEATHSTREAK_typeArmoured, 1);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 2);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 3);
    reward(s, 10, level.DEATHSTREAK_typeHighJump, 1);
	reward(s, 5, level.DEATHSTREAK_typeHighJump, 2);
	reward(s, 0, level.DEATHSTREAK_typeHighJump, 3);
	reward(s, 0, level.DEATHSTREAK_typeBulletDodge, 1);
	reward(s, 10, level.DEATHSTREAK_typeBulletDodge, 2);
	reward(s, 5, level.DEATHSTREAK_typeBulletDodge, 3);
    reward(s, 0, level.DEATHSTREAK_typeJumpySpawn, 1);
	reward(s, 10, level.DEATHSTREAK_typeJumpySpawn, 2);
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
	reward(s, 0, level.DEATHSTREAK_typePotato, 1);
	reward(s, 15, level.DEATHSTREAK_typePotato, 2);
	reward(s, 15, level.DEATHSTREAK_typePotato, 3);
    reward(s, 5, level.DEATHSTREAK_typeAntiInviNade, 1);
    reward(s, 5, level.DEATHSTREAK_typeNade, 1);

	s = stage(30, &"Zombie Power^9: ^1Brutal^9, ^7Next In^9: ^7");
    reward(s, 0, level.DEATHSTREAK_typeNothing, 1);
    reward(s, 0, level.DEATHSTREAK_typeSpeed, 1);
	reward(s, 15, level.DEATHSTREAK_typeSpeed, 2);
	reward(s, 10, level.DEATHSTREAK_typeSpeed, 3);
    reward(s, 0, level.DEATHSTREAK_typeMutant, 1);
	reward(s, 15, level.DEATHSTREAK_typeMutant, 2);
	reward(s, 10, level.DEATHSTREAK_typeMutant, 3);
	reward(s, 10, level.DEATHSTREAK_typeHeavyMutant, 1);
	reward(s, 5, level.DEATHSTREAK_typeHeavyMutant, 2);
	reward(s, 5, level.DEATHSTREAK_typeHeavyMutant, 3);
    reward(s, 5, level.DEATHSTREAK_typeArmoured, 1);
	reward(s, 5, level.DEATHSTREAK_typeArmoured, 2);
	reward(s, 0, level.DEATHSTREAK_typeArmoured, 3);
    reward(s, 5, level.DEATHSTREAK_typeHighJump, 1);
	reward(s, 5, level.DEATHSTREAK_typeHighJump, 2);
	reward(s, 5, level.DEATHSTREAK_typeHighJump, 3);
	reward(s, 0, level.DEATHSTREAK_typeBulletDodge, 1);
	reward(s, 5, level.DEATHSTREAK_typeBulletDodge, 2);
	reward(s, 10, level.DEATHSTREAK_typeBulletDodge, 3);
    reward(s, 0, level.DEATHSTREAK_typeJumpySpawn, 1);
	reward(s, 5, level.DEATHSTREAK_typeJumpySpawn, 2);
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
	reward(s, 10, level.DEATHSTREAK_typePotato, 3);
    reward(s, 5, level.DEATHSTREAK_typeAntiInviNade, 1);
    reward(s, 5, level.DEATHSTREAK_typeNade, 1);

    s = stage(40, &"Zombie Power^9: ^6Unstoppable");
    reward(s, 0, level.DEATHSTREAK_typeNothing, 1);
    reward(s, 0, level.DEATHSTREAK_typeSpeed, 1);
	reward(s, 0, level.DEATHSTREAK_typeSpeed, 2);
	reward(s, 20, level.DEATHSTREAK_typeSpeed, 3);
    reward(s, 0, level.DEATHSTREAK_typeMutant, 1);
	reward(s, 0, level.DEATHSTREAK_typeMutant, 2);
	reward(s, 20, level.DEATHSTREAK_typeMutant, 3);
	reward(s, 0, level.DEATHSTREAK_typeHeavyMutant, 1);
	reward(s, 5, level.DEATHSTREAK_typeHeavyMutant, 2);
	reward(s, 15, level.DEATHSTREAK_typeHeavyMutant, 3);
    reward(s, 0, level.DEATHSTREAK_typeArmoured, 1);
	reward(s, 10, level.DEATHSTREAK_typeArmoured, 2);
	reward(s, 5, level.DEATHSTREAK_typeArmoured, 3);
    reward(s, 0, level.DEATHSTREAK_typeHighJump, 1);
	reward(s, 10, level.DEATHSTREAK_typeHighJump, 2);
	reward(s, 5, level.DEATHSTREAK_typeHighJump, 3);
	reward(s, 0, level.DEATHSTREAK_typeBulletDodge, 1);
	reward(s, 0, level.DEATHSTREAK_typeBulletDodge, 2);
	reward(s, 15, level.DEATHSTREAK_typeBulletDodge, 3);
    reward(s, 0, level.DEATHSTREAK_typeJumpySpawn, 1);
	reward(s, 0, level.DEATHSTREAK_typeJumpySpawn, 2);
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

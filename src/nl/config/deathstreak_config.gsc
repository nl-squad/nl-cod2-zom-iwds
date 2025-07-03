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

    level.DEATHSTREAK_bulletDodgeGrade1Chance = 0.1;
    level.DEATHSTREAK_bulletDodgeGrade2Chance = 0.15;
    level.DEATHSTREAK_bulletDodgeGrade3Chance = 0.2;

    level.DEATHSTREAK_jumpySpawnGrade1ProtectionTime = 1;
    level.DEATHSTREAK_jumpySpawnGrade2ProtectionTime = 2;
    level.DEATHSTREAK_jumpySpawnGrade3ProtectionTime = 3;

    level.DEATHSTREAK_swooshGrade1MaxPower = 300;
    level.DEATHSTREAK_swooshGrade2MaxPower = 500;
    level.DEATHSTREAK_swooshGrade3MaxPower = 700;
	
    level.DEATHSTREAK_absorptionMaxHealth = 600;
	level.DEATHSTREAK_absorptionGrade1RadiusSquared = 96 * 96;
    level.DEATHSTREAK_absorptionGrade1TickDamage = 10;
    level.DEATHSTREAK_absorptionGrade2RadiusSquared = 128 * 120;
    level.DEATHSTREAK_absorptionGrade2TickDamage = 10;
    level.DEATHSTREAK_absorptionGrade3RadiusSquared = 160 * 160;
    level.DEATHSTREAK_absorptionGrade3TickDamage = 15;
	
    level.TOXIC__damage = 15;
	level.DEATHSTREAK_toxicGrade1RadiusSquared = 96 * 96;
    level.DEATHSTREAK_toxicEffectLevel1 = loadFx("fx/nl/nl_toxic_.efx");
    level.DEATHSTREAK_toxicGrade2RadiusSquared = 128 * 128;
    level.DEATHSTREAK_toxicEffectLevel2 = loadFx("fx/nl/nl_toxic_.efx");
    level.DEATHSTREAK_toxicGrade3RadiusSquared = 160 * 160;
    level.DEATHSTREAK_toxicEffectLevel3 = loadFx("fx/nl/nl_toxic_.efx");

    level.DEATHSTREAK_toxicGrade1RadiusSquared = 64 * 64;
    level.DEATHSTREAK_toxicEffectLevel1 = loadFx("fx/nl/nl_toxic_.efx");
    level.DEATHSTREAK_toxicGrade2RadiusSquared = 72 * 72;
    level.DEATHSTREAK_toxicEffectLevel2 = loadFx("fx/nl/nl_toxic_.efx");
    level.DEATHSTREAK_toxicGrade3RadiusSquared = 80 * 80;
    level.DEATHSTREAK_toxicEffectLevel3 = loadFx("fx/nl/nl_toxic_.efx");

    // Available rewards
    
	nothing = blanco\deathstreaks\generic::GrantNothing;
	
	speed = blanco\deathstreaks\generic::GrantSpeed;
	
	mutant = blanco\deathstreaks\generic::GrantMutant;
    heavyMutant = blanco\deathstreaks\generic::GrantHeavyMutant;
    armoured = blanco\deathstreaks\generic::GrantArmoured;
	
	highJump = blanco\deathstreaks\high_jump::Grant;
	bulletDodge = blanco\deathstreaks\generic::GrantBulletDodge;
	jumpySpawn = blanco\deathstreaks\jumpy_spawn::Grant;
	swoosh = blanco\deathstreaks\swoosh::Grant;
	
	absorption = blanco\deathstreaks\absorption::Grant;
	toxic = blanco\deathstreaks\toxic::Grant;
	
	potato = blanco\deathstreaks\generic::GrantPotato;
	antiInviNade = blanco\deathstreaks\generic::GrantAntiInviNade;
	nade = blanco\deathstreaks\generic::GrantNade;

    // Stages
    s = stage(0, &"^7Zom^9bie ^7Pow^9er^9: ^3Basic^9, ^7Ne^9xt ^7In^4: ^7");
    reward(s, 10, nothing, 1);
    reward(s, 10, speed, 1);
	reward(s, 5, speed, 2);
	reward(s, 0, speed, 3);
    reward(s, 15, mutant, 1);
	reward(s, 10, mutant, 2);
	reward(s, 0, mutant, 3);
	reward(s, 5, heavyMutant, 1);
	reward(s, 0, heavyMutant, 2);
	reward(s, 0, heavyMutant, 3);
    reward(s, 0, armoured, 1);
	reward(s, 0, armoured, 2);
	reward(s, 0, armoured, 3);
    reward(s, 10, highJump, 1);
	reward(s, 5, highJump, 2);
	reward(s, 0, highJump, 3);
	reward(s, 10, bulletDodge, 1);
	reward(s, 5, bulletDodge, 2);
	reward(s, 0, bulletDodge, 3);
    reward(s, 10, jumpySpawn, 1);
	reward(s, 5, jumpySpawn, 2);
	reward(s, 0, jumpySpawn, 3);
    reward(s, 10, swoosh, 1);
	reward(s, 5, swoosh, 2);
	reward(s, 0, swoosh, 3);
	reward(s, 10, absorption, 1);
	reward(s, 5, absorption, 2);
	reward(s, 0, absorption, 3);
    reward(s, 10, toxic, 1);
	reward(s, 5, toxic, 2);
	reward(s, 0, toxic, 3);
	reward(s, 15, potato, 1);
	reward(s, 10, potato, 2);
	reward(s, 5, potato, 3);
    reward(s, 10, antiInviNade, 1);
    reward(s, 0, nade, 1);
	
    s = stage(10, &"^7Zom^9bie ^7Pow^9er^9: ^3Medium^9, ^7Ne^9xt ^7In^4: ^7");
    reward(s, 5, nothing, 1);
    reward(s, 5, speed, 1);
	reward(s, 10, speed, 2);
	reward(s, 0, speed, 3);
    reward(s, 10, mutant, 1);
	reward(s, 15, mutant, 2);
	reward(s, 0, mutant, 3);
	reward(s, 5, heavyMutant, 1);
	reward(s, 5, heavyMutant, 2);
	reward(s, 0, heavyMutant, 3);
    reward(s, 0, armoured, 1);
	reward(s, 0, armoured, 2);
	reward(s, 0, armoured, 3);
    reward(s, 10, highJump, 1);
	reward(s, 5, highJump, 2);
	reward(s, 0, highJump, 3);
	reward(s, 5, bulletDodge, 1);
	reward(s, 10, bulletDodge, 2);
	reward(s, 0, bulletDodge, 3);
    reward(s, 5, jumpySpawn, 1);
	reward(s, 10, jumpySpawn, 2);
	reward(s, 0, jumpySpawn, 3);
    reward(s, 5, swoosh, 1);
	reward(s, 10, swoosh, 2);
	reward(s, 0, swoosh, 3);
	reward(s, 5, absorption, 1);
	reward(s, 10, absorption, 2);
	reward(s, 0, absorption, 3);
    reward(s, 5, toxic, 1);
	reward(s, 10, toxic, 2);
	reward(s, 0, toxic, 3);
	reward(s, 10, potato, 1);
	reward(s, 10, potato, 2);
	reward(s, 10, potato, 3);
    reward(s, 10, antiInviNade, 1);
    reward(s, 0, nade, 1);

    s = stage(20, &"^7Zom^9bie ^7Pow^9er^9: ^3Strong^9, ^7Ne^9xt ^7In^4: ^7");
    reward(s, 0, nothing, 1);
    reward(s, 0, speed, 1);
	reward(s, 10, speed, 2);
	reward(s, 5, speed, 3);
    reward(s, 5, mutant, 1);
	reward(s, 15, mutant, 2);
	reward(s, 10, mutant, 3);
	reward(s, 0, heavyMutant, 1);
	reward(s, 5, heavyMutant, 2);
	reward(s, 5, heavyMutant, 3);
    reward(s, 5, armoured, 1);
	reward(s, 0, armoured, 2);
	reward(s, 0, armoured, 3);
    reward(s, 10, highJump, 1);
	reward(s, 5, highJump, 2);
	reward(s, 0, highJump, 3);
	reward(s, 5, bulletDodge, 1);
	reward(s, 10, bulletDodge, 2);
	reward(s, 0, bulletDodge, 3);
    reward(s, 0, jumpySpawn, 1);
	reward(s, 10, jumpySpawn, 2);
	reward(s, 5, jumpySpawn, 3);
    reward(s, 0, swoosh, 1);
	reward(s, 10, swoosh, 2);
	reward(s, 5, swoosh, 3);
	reward(s, 0, absorption, 1);
	reward(s, 10, absorption, 2);
	reward(s, 5, absorption, 3);
    reward(s, 0, toxic, 1);
	reward(s, 10, toxic, 2);
	reward(s, 5, toxic, 3);
	reward(s, 10, potato, 1);
	reward(s, 10, potato, 2);
	reward(s, 10, potato, 3);
    reward(s, 5, antiInviNade, 1);
    reward(s, 5, nade, 1);

    s = stage(30, &"^7Zom^9bie ^7Pow^9er^9: ^3Brutal^9, ^7Ne^9xt ^7In^4: ^7");
    reward(s, 0, nothing, 1);
    reward(s, 0, speed, 1);
	reward(s, 5, speed, 2);
	reward(s, 10, speed, 3);
    reward(s, 0, mutant, 1);
	reward(s, 15, mutant, 2);
	reward(s, 15, mutant, 3);
	reward(s, 0, heavyMutant, 1);
	reward(s, 10, heavyMutant, 2);
	reward(s, 5, heavyMutant, 3);
    reward(s, 10, armoured, 1);
	reward(s, 5, armoured, 2);
	reward(s, 0, armoured, 3);
    reward(s, 10, highJump, 1);
	reward(s, 5, highJump, 2);
	reward(s, 0, highJump, 3);
	reward(s, 0, bulletDodge, 1);
	reward(s, 10, bulletDodge, 2);
	reward(s, 5, bulletDodge, 3);
    reward(s, 0, jumpySpawn, 1);
	reward(s, 10, jumpySpawn, 2);
	reward(s, 5, jumpySpawn, 3);
    reward(s, 0, swoosh, 1);
	reward(s, 10, swoosh, 2);
	reward(s, 5, swoosh, 3);
	reward(s, 0, absorption, 1);
	reward(s, 10, absorption, 2);
	reward(s, 5, absorption, 3);
    reward(s, 0, toxic, 1);
	reward(s, 10, toxic, 2);
	reward(s, 5, toxic, 3);
	reward(s, 0, potato, 1);
	reward(s, 10, potato, 2);
	reward(s, 10, potato, 3);
    reward(s, 0, antiInviNade, 1);
    reward(s, 5, nade, 1);

    s = stage(40, &"^7Zom^9bie ^7Pow^9er^9: ^1Unstoppable");
    reward(s, 0, nothing, 1);
    reward(s, 0, speed, 1);
	reward(s, 5, speed, 2);
	reward(s, 10, speed, 3);
    reward(s, 0, mutant, 1);
	reward(s, 5, mutant, 2);
	reward(s, 15, mutant, 3);
	reward(s, 0, heavyMutant, 1);
	reward(s, 15, heavyMutant, 2);
	reward(s, 10, heavyMutant, 3);
    reward(s, 0, armoured, 1);
	reward(s, 10, armoured, 2);
	reward(s, 5, armoured, 3);
    reward(s, 5, highJump, 1);
	reward(s, 5, highJump, 2);
	reward(s, 5, highJump, 3);
	reward(s, 0, bulletDodge, 1);
	reward(s, 5, bulletDodge, 2);
	reward(s, 10, bulletDodge, 3);
    reward(s, 0, jumpySpawn, 1);
	reward(s, 5, jumpySpawn, 2);
	reward(s, 10, jumpySpawn, 3);
    reward(s, 0, swoosh, 1);
	reward(s, 5, swoosh, 2);
	reward(s, 10, swoosh, 3);
	reward(s, 0, absorption, 1);
	reward(s, 5, absorption, 2);
	reward(s, 10, absorption, 3);
    reward(s, 0, toxic, 1);
	reward(s, 5, toxic, 2);
	reward(s, 10, toxic, 3);
	reward(s, 0, potato, 1);
	reward(s, 10, potato, 2);
	reward(s, 10, potato, 3);
    reward(s, 0, antiInviNade, 1);
    reward(s, 5, nade, 1);
}

// Helper functions
stage(minimumZombiePower, label)
{
    return blanco\deathstreaks\deathstreak::defineDeathStreakStage(minimumZombiePower, label);
}

reward(stage, chance, function, grade)
{
    return blanco\deathstreaks\deathstreak::defineDeathStreak(stage, chance, function, grade);
}

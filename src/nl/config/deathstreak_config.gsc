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

    // Stages
    s = stage(0, &"Zombie Power^9: ^7Basic^9, ^7Next In^9: ^7");
    reward(s, 15, "Nothing", 1);
    reward(s, 15, "Speed", 1);
	reward(s, 10, "Speed", 2);
	reward(s, 0, "Speed", 3);
    reward(s, 15, "Mutant", 1);
	reward(s, 10, "Mutant", 2);
	reward(s, 0, "Mutant", 3);
	reward(s, 5, "Heavy Mutant", 1);
	reward(s, 0, "Heavy Mutant", 2);
	reward(s, 0, "Heavy Mutant", 3);
    reward(s, 0, "Armoured", 1);
	reward(s, 0, "Armoured", 2);
	reward(s, 0, "Armoured", 3);
    reward(s, 10, "High Jump", 1);
	reward(s, 5, "High Jump", 2);
	reward(s, 0, "High Jump", 3);
	reward(s, 10, "Bullet Dodge", 1);
	reward(s, 5, "Bullet Dodge", 2);
	reward(s, 0, "Bullet Dodge", 3);
    reward(s, 10, "Jumpy Spawn", 1);
	reward(s, 5, "Jumpy Spawn", 2);
	reward(s, 0, "Jumpy Spawn", 3);
    reward(s, 10, "Swoosh", 1);
	reward(s, 5, "Swoosh", 2);
	reward(s, 0, "Swoosh", 3);
	reward(s, 10, "Absorption", 1);
	reward(s, 5, "Absorption", 2);
	reward(s, 0, "Absorption", 3);
    reward(s, 10, "Toxic", 1);
	reward(s, 5, "Toxic", 2);
	reward(s, 0, "Toxic", 3);
	reward(s, 15, "Potato", 1);
	reward(s, 10, "Potato", 2);
	reward(s, 5, "Potato", 3);
    reward(s, 10, "Anti Invi Nade", 1);
    reward(s, 0, "Nade", 1);
	
    s = stage(10, &"Zombie Power^9: ^3Medium^9, ^7Next In^9: ^7");
    reward(s, 5, "Nothing", 1);
    reward(s, 10, "Speed", 1);
	reward(s, 15, "Speed", 2);
	reward(s, 0, "Speed", 3);
    reward(s, 10, "Mutant", 1);
	reward(s, 15, "Mutant", 2);
	reward(s, 0, "Mutant", 3);
	reward(s, 10, "Heavy Mutant", 1);
	reward(s, 5, "Heavy Mutant", 2);
	reward(s, 0, "Heavy Mutant", 3);
    reward(s, 0, "Armoured", 1);
	reward(s, 0, "Armoured", 2);
	reward(s, 0, "Armoured", 3);
    reward(s, 10, "High Jump", 1);
	reward(s, 5, "High Jump", 2);
	reward(s, 0, "High Jump", 3);
	reward(s, 5, "Bullet Dodge", 1);
	reward(s, 10, "Bullet Dodge", 2);
	reward(s, 0, "Bullet Dodge", 3);
    reward(s, 5, "Jumpy Spawn", 1);
	reward(s, 10, "Jumpy Spawn", 2);
	reward(s, 0, "Jumpy Spawn", 3);
    reward(s, 5, "Swoosh", 1);
	reward(s, 10, "Swoosh", 2);
	reward(s, 0, "Swoosh", 3);
	reward(s, 5, "Absorption", 1);
	reward(s, 10, "Absorption", 2);
	reward(s, 0, "Absorption", 3);
    reward(s, 5, "Toxic", 1);
	reward(s, 10, "Toxic", 2);
	reward(s, 0, "Toxic", 3);
	reward(s, 5, "Potato", 1);
	reward(s, 15, "Potato", 2);
	reward(s, 10, "Potato", 3);
    reward(s, 10, "Anti Invi Nade", 1);
    reward(s, 0, "Nade", 1);

    s = stage(20, &"Zombie Power^9: ^8Strong^9, ^7Next In^9: ^7");
    reward(s, 0, "Nothing", 1);
    reward(s, 5, "Speed", 1);
	reward(s, 15, "Speed", 2);
	reward(s, 5, "Speed", 3);
    reward(s, 5, "Mutant", 1);
	reward(s, 15, "Mutant", 2);
	reward(s, 5, "Mutant", 3);
	reward(s, 10, "Heavy Mutant", 1);
	reward(s, 5, "Heavy Mutant", 2);
	reward(s, 0, "Heavy Mutant", 3);
    reward(s, 5, "Armoured", 1);
	reward(s, 0, "Armoured", 2);
	reward(s, 0, "Armoured", 3);
    reward(s, 10, "High Jump", 1);
	reward(s, 5, "High Jump", 2);
	reward(s, 0, "High Jump", 3);
	reward(s, 0, "Bullet Dodge", 1);
	reward(s, 10, "Bullet Dodge", 2);
	reward(s, 5, "Bullet Dodge", 3);
    reward(s, 0, "Jumpy Spawn", 1);
	reward(s, 10, "Jumpy Spawn", 2);
	reward(s, 5, "Jumpy Spawn", 3);
    reward(s, 0, "Swoosh", 1);
	reward(s, 10, "Swoosh", 2);
	reward(s, 5, "Swoosh", 3);
	reward(s, 0, "Absorption", 1);
	reward(s, 10, "Absorption", 2);
	reward(s, 5, "Absorption", 3);
    reward(s, 0, "Toxic", 1);
	reward(s, 10, "Toxic", 2);
	reward(s, 5, "Toxic", 3);
	reward(s, 0, "Potato", 1);
	reward(s, 15, "Potato", 2);
	reward(s, 15, "Potato", 3);
    reward(s, 5, "Anti Invi Nade", 1);
    reward(s, 5, "Nade", 1);

	s = stage(30, &"Zombie Power^9: ^1Brutal^9, ^7Next In^9: ^7");
    reward(s, 0, "Nothing", 1);
    reward(s, 0, "Speed", 1);
	reward(s, 15, "Speed", 2);
	reward(s, 10, "Speed", 3);
    reward(s, 0, "Mutant", 1);
	reward(s, 15, "Mutant", 2);
	reward(s, 10, "Mutant", 3);
	reward(s, 10, "Heavy Mutant", 1);
	reward(s, 5, "Heavy Mutant", 2);
	reward(s, 5, "Heavy Mutant", 3);
    reward(s, 5, "Armoured", 1);
	reward(s, 5, "Armoured", 2);
	reward(s, 0, "Armoured", 3);
    reward(s, 5, "High Jump", 1);
	reward(s, 5, "High Jump", 2);
	reward(s, 5, "High Jump", 3);
	reward(s, 0, "Bullet Dodge", 1);
	reward(s, 5, "Bullet Dodge", 2);
	reward(s, 10, "Bullet Dodge", 3);
    reward(s, 0, "Jumpy Spawn", 1);
	reward(s, 5, "Jumpy Spawn", 2);
	reward(s, 10, "Jumpy Spawn", 3);
    reward(s, 0, "Swoosh", 1);
	reward(s, 5, "Swoosh", 2);
	reward(s, 10, "Swoosh", 3);
	reward(s, 0, "Absorption", 1);
	reward(s, 5, "Absorption", 2);
	reward(s, 10, "Absorption", 3);
    reward(s, 0, "Toxic", 1);
	reward(s, 5, "Toxic", 2);
	reward(s, 10, "Toxic", 3);
	reward(s, 0, "Potato", 1);
	reward(s, 10, "Potato", 2);
	reward(s, 10, "Potato", 3);
    reward(s, 5, "Anti Invi Nade", 1);
    reward(s, 5, "Nade", 1);

    s = stage(40, &"Zombie Power^9: ^6Unstoppable");
    reward(s, 0, "Nothing", 1);
    reward(s, 0, "Speed", 1);
	reward(s, 0, "Speed", 2);
	reward(s, 20, "Speed", 3);
    reward(s, 0, "Mutant", 1);
	reward(s, 0, "Mutant", 2);
	reward(s, 20, "Mutant", 3);
	reward(s, 0, "Heavy Mutant", 1);
	reward(s, 5, "Heavy Mutant", 2);
	reward(s, 15, "Heavy Mutant", 3);
    reward(s, 0, "Armoured", 1);
	reward(s, 10, "Armoured", 2);
	reward(s, 5, "Armoured", 3);
    reward(s, 0, "High Jump", 1);
	reward(s, 10, "High Jump", 2);
	reward(s, 5, "High Jump", 3);
	reward(s, 0, "Bullet Dodge", 1);
	reward(s, 0, "Bullet Dodge", 2);
	reward(s, 15, "Bullet Dodge", 3);
    reward(s, 0, "Jumpy Spawn", 1);
	reward(s, 0, "Jumpy Spawn", 2);
	reward(s, 15, "Jumpy Spawn", 3);
    reward(s, 0, "Swoosh", 1);
	reward(s, 0, "Swoosh", 2);
	reward(s, 15, "Swoosh", 3);
	reward(s, 0, "Absorption", 1);
	reward(s, 0, "Absorption", 2);
	reward(s, 15, "Absorption", 3);
    reward(s, 0, "Toxic", 1);
	reward(s, 0, "Toxic", 2);
	reward(s, 15, "Toxic", 3);
	reward(s, 0, "Potato", 1);
	reward(s, 10, "Potato", 2);
	reward(s, 15, "Potato", 3);
    reward(s, 5, "Anti Invi Nade", 1);
    reward(s, 5, "Nade", 1);
}

// Helper functions
stage(minimumZombiePower, label)
{
    return blanco\deathstreaks\deathstreak::defineDeathStreakStage(minimumZombiePower, label);
}

reward(stage, chance, name, grade)
{
    return blanco\deathstreaks\deathstreak::defineDeathStreak(stage, chance, name, grade);
}

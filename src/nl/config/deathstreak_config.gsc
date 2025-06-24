Configure()
{
    // Configuration below
    level.DEATHSTREAK_speedHp = 200;
    level.DEATHSTREAK_speedGrade1Speed = 250;
    level.DEATHSTREAK_speedGrade2Speed = 270;
    level.DEATHSTREAK_speedGrade3Speed = 290;

    level.DEATHSTREAK_jumpySpawnGrade1ProtectionTime = 1;
    level.DEATHSTREAK_jumpySpawnGrade2ProtectionTime = 2;
    level.DEATHSTREAK_jumpySpawnGrade3ProtectionTime = 3;

    level.DEATHSTREAK_highJumpGrade1BoostPower = 5000;
    level.DEATHSTREAK_highJumpGrade2BoostPower = 6000;
    level.DEATHSTREAK_highJumpGrade3BoostPower = 7000;

    level.DEATHSTREAK_toxicMeatGrade1RadiusSquared = 64 * 64;
    level.DEATHSTREAK_toxicMeatEffectLevel1 = loadFx("fx/nl/nl_toxic_meat.efx");
    level.DEATHSTREAK_toxicMeatGrade2RadiusSquared = 72 * 72;
    level.DEATHSTREAK_toxicMeatEffectLevel2 = loadFx("fx/nl/nl_toxic_meat.efx");
    level.DEATHSTREAK_toxicMeatGrade3RadiusSquared = 80 * 80;
    level.DEATHSTREAK_toxicMeatEffectLevel3 = loadFx("fx/nl/nl_toxic_meat.efx");

    level.DEATHSTREAK_mutantExplodeAndFireDamageMultiplier = 0.9;
    level.DEATHSTREAK_mutantGrade1Hp = 550;
    level.DEATHSTREAK_mutantGrade2Hp = 600;
    level.DEATHSTREAK_mutantGrade3Hp = 650;

    level.DEATHSTREAK_heavyMutantExplodeAndFireDamageMultiplier = 0.8;
    level.DEATHSTREAK_heavyMutantGrade1Hp = 750;
    level.DEATHSTREAK_heavyMutantGrade2Hp = 800;
    level.DEATHSTREAK_heavyMutantGrade3Hp = 850;

    level.DEATHSTREAK_armouredHp = 800;
    level.DEATHSTREAK_armouredGrade1ExplodeAndFireDamageMultiplier = 0.4;
    level.DEATHSTREAK_armouredGrade2ExplodeAndFireDamageMultiplier = 0.3;
    level.DEATHSTREAK_armouredGrade3ExplodeAndFireDamageMultiplier = 0.2;

    level.DEATHSTREAK_bulletDodgeGrade1Chance = 0.2;
    level.DEATHSTREAK_bulletDodgeGrade2Chance = 0.3;
    level.DEATHSTREAK_bulletDodgeGrade3Chance = 0.4;

    level.DEATHSTREAK_swooshGrade1MaxPower = 300;
    level.DEATHSTREAK_swooshGrade2MaxPower = 500;
    level.DEATHSTREAK_swooshGrade3MaxPower = 700;

    level.DEATHSTREAK_toxicAuraGrade1RadiusSquared = 128 * 128;
    level.DEATHSTREAK_toxicAuraEffectLevel1 = loadFx("fx/nl/nl_toxic_meat.efx");
    level.DEATHSTREAK_toxicAuraGrade2RadiusSquared = 192 * 192;
    level.DEATHSTREAK_toxicAuraEffectLevel2 = loadFx("fx/nl/nl_toxic_meat.efx");
    level.DEATHSTREAK_toxicAuraGrade3RadiusSquared = 256 * 256;
    level.DEATHSTREAK_toxicAuraEffectLevel3 = loadFx("fx/nl/nl_toxic_meat.efx");

    level.DEATHSTREAK_absorptionGrade1RadiusSquared = 64 * 64;
    level.DEATHSTREAK_absorptionGrade1TickDamage = 5;
    level.DEATHSTREAK_absorptionGrade2RadiusSquared = 80 * 80;
    level.DEATHSTREAK_absorptionGrade2TickDamage = 7;
    level.DEATHSTREAK_absorptionGrade3RadiusSquared = 96 * 96;
    level.DEATHSTREAK_absorptionGrade3TickDamage = 10;

    // Available rewards
    toxicAura = blanco\deathstreaks\toxic_aura::Grant;
    swoosh = blanco\deathstreaks\swoosh::Grant;
    nothing = blanco\deathstreaks\generic::GrantNothing;
    speed = blanco\deathstreaks\generic::GrantSpeed;
    potato = blanco\deathstreaks\generic::GrantPotato;
    nade = blanco\deathstreaks\generic::GrantNade;
    highJump = blanco\deathstreaks\high_jump::Grant;
    toxicMeat = blanco\deathstreaks\toxic_meat::Grant;
    mutant = blanco\deathstreaks\generic::GrantMutant;
    heavyMutant = blanco\deathstreaks\generic::GrantHeavyMutant;
    armoured = blanco\deathstreaks\generic::GrantArmoured;
    antiInviNade = blanco\deathstreaks\generic::GrantAntiInviNade;
    bulletDodge = blanco\deathstreaks\generic::GrantBulletDodge;
    absorption = blanco\deathstreaks\absorption::Grant;

    // Stages
    s = stage(0, &"^7Zom^9bie ^7Pow^9er^9: ^3Basic^9, ^7Ne^9xt ^7In^4: ^7");
    reward(s, 100, mutant, 2);
    reward(s, 100, heavyMutant, 1);
    reward(s, 100, nothing, 1);

    s = stage(18, &"^7Zom^9bie ^7Pow^9er^9: ^3Medium^9, ^7Ne^9xt ^7In^4: ^7");
    reward(s, 100, mutant, 2);
    reward(s, 100, heavyMutant, 1);
    reward(s, 100, absorption, 1);
    reward(s, 100, swoosh, 1);
    reward(s, 100, toxicAura, 1);

    s = stage(20, &"^7Zom^9bie ^7Pow^9er^9: ^3Strong^9, ^7Ne^9xt ^7In^4: ^7");
    reward(s, 100, potato, 1);
    reward(s, 100, mutant, 2);
    reward(s, 100, heavyMutant, 1);
    reward(s, 100, armoured, 1);
    reward(s, 100, swoosh, 1);

    s = stage(30, &"^7Zom^9bie ^7Pow^9er^9: ^3Brutal^9, ^7Ne^9xt ^7In^4: ^7");
    reward(s, 100, absorption, 3);
    reward(s, 100, swoosh, 2);
    reward(s, 100, toxicAura, 1);

    s = stage(40, &"^7Zom^9bie ^7Pow^9er^9: ^1Unstoppable");
    reward(s,  5, bulletDodge, 3);
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

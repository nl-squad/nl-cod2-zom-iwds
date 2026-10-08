Configure()
{
	level.HQ_enabled = true;
	level.HQ_hqSpawnRequiredPlayers = 7;
	level.HQ_captureSecondsDelay = 45;
	level.HQ_secondsToCapLevel1 = 24;
	level.HQ_secondsToCapLevel2 = 30;
	level.HQ_secondsToCapLevel3 = 36;
	level.HQ_secondsToCapLevel4 = 42;
	level.HQ_secondsToCapLevel5 = 48;
	level.HQ_defaultCapLevel = 3;
	level.HQ_maxParallelization = 3;
	level.HQ_minContributionMultiplier = 0.25;
	level.HQ_totalCapExpReward = 600;
	level.HQ_totalCapMoneyReward = 1800;

	level.HQ_rewardsBot = [];
	level.HQ_rewardsBot = blanco\utils::addWithPossibility(level.HQ_rewardsBot, "rage", 10);
	level.HQ_rewardsBot = blanco\utils::addWithPossibility(level.HQ_rewardsBot, "emp", 10);
	level.HQ_rewardsBot = blanco\utils::addWithPossibility(level.HQ_rewardsBot, "rambo", 10);
	level.HQ_rewardsBot = blanco\utils::addWithPossibility(level.HQ_rewardsBot, "sentry", 10);
	level.HQ_rewardsBot = blanco\utils::addWithPossibility(level.HQ_rewardsBot, "raptor", 10);
	level.HQ_rewardsBot = blanco\utils::addWithPossibility(level.HQ_rewardsBot, "ulti", 10);

	level.HQ_rewardsGambler = [];
	level.HQ_rewardsGambler = blanco\utils::addWithPossibility(level.HQ_rewardsGambler, "rage", 10);
	level.HQ_rewardsGambler = blanco\utils::addWithPossibility(level.HQ_rewardsGambler, "emp", 10);
	level.HQ_rewardsGambler = blanco\utils::addWithPossibility(level.HQ_rewardsGambler, "rambo", 10);
	level.HQ_rewardsGambler = blanco\utils::addWithPossibility(level.HQ_rewardsGambler, "sentry", 20);
	level.HQ_rewardsGambler = blanco\utils::addWithPossibility(level.HQ_rewardsGambler, "hp_boost", 20);
	level.HQ_rewardsGambler = blanco\utils::addWithPossibility(level.HQ_rewardsGambler, "rocket", 30);
	level.HQ_rewardsGambler = blanco\utils::addWithPossibility(level.HQ_rewardsGambler, "launcher", 35);
	level.HQ_rewardsGambler = blanco\utils::addWithPossibility(level.HQ_rewardsGambler, "raptor", 35);
	level.HQ_rewardsGambler = blanco\utils::addWithPossibility(level.HQ_rewardsGambler, "ulti", 35);

	level.HQ_rewardsNormal = [];
	level.HQ_rewardsNormal = blanco\utils::addWithPossibility(level.HQ_rewardsNormal, "drone", 25);
	level.HQ_rewardsNormal = blanco\utils::addWithPossibility(level.HQ_rewardsNormal, "rage", 25);
	level.HQ_rewardsNormal = blanco\utils::addWithPossibility(level.HQ_rewardsNormal, "emp", 20);
	level.HQ_rewardsNormal = blanco\utils::addWithPossibility(level.HQ_rewardsNormal, "rambo", 20);
	level.HQ_rewardsNormal = blanco\utils::addWithPossibility(level.HQ_rewardsNormal, "sentry", 20);
	level.HQ_rewardsNormal = blanco\utils::addWithPossibility(level.HQ_rewardsNormal, "rocket", 15);
	level.HQ_rewardsNormal = blanco\utils::addWithPossibility(level.HQ_rewardsNormal, "launcher", 15);
	level.HQ_rewardsNormal = blanco\utils::addWithPossibility(level.HQ_rewardsNormal, "raptor", 10);
	level.HQ_rewardsNormal = blanco\utils::addWithPossibility(level.HQ_rewardsNormal, "hp_boost", 10);
	level.HQ_rewardsNormal = blanco\utils::addWithPossibility(level.HQ_rewardsNormal, "ulti", 10);
}
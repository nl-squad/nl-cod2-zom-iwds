init()
{
	precacheShader("overlay_low_health");

	level.healthOverlayCutoff = 0.35;
	level.playerHealth_RegularRegenDelay = 5000;
}

playerHealthRegen()
{
	self endon("joined_spectators");
	self endon("joined_team");
	self endon("killed_player");
	self endon("disconnect");
	self endon("end_healthregen");

	maxhealth = self.health;
	oldhealth = maxhealth;
	player = self;
	health_add = 0;
	
	regenRate = 0.1; // 0.017;
	veryHurt = false;
	
	thread playerBreathingSound(maxhealth * 0.35);
	lastSoundTime_Recover = 0;
	hurtTime = 0;
	newHealth = 0;
	
	for(;;)
	{
		wait (0.05);
		
		if(!isDefined(player) || !isDefined(player.health) || !isDefined(player.maxhealth) || player.maxhealth == 0)
		{
			a = 1;
		}
		else
		{
		//////

		if (player.health == maxhealth)
		{
			veryHurt = false;
			continue;
		}
					
		if (player.health <= 0)
			return;

		wasVeryHurt = veryHurt;

		if(!isDefined(maxHealth))
			continue;

		ratio = 1;
		if(maxHealth != 0)
		{
			ratio = player.health / maxHealth;
		}

		if (ratio <= level.healthOverlayCutoff)
		{
			veryHurt = true;
			if (!wasVeryHurt)
			{
				hurtTime = gettime();
			}
		}
			
		if (player.health >= oldhealth)
		{
			if (gettime() - hurttime < level.playerHealth_RegularRegenDelay)
				continue;

			if (gettime() - lastSoundTime_Recover > level.playerHealth_RegularRegenDelay)
			{
				lastSoundTime_Recover = gettime();
				self playLocalSound("breathing_better");
			}
	
			if (veryHurt)
			{
				newHealth = ratio;
				if (gettime() > hurtTime + 3000)
					newHealth += regenRate;
			}
			else
				newHealth = 1;
							
			if (newHealth > 1.0)
				newHealth = 1.0;
				
			if (newHealth <= 0)
			{
				// Player is dead
				return;
			}
			
			player setnormalhealth (newHealth);
			oldhealth = player.health;
			continue;
		}

		oldhealth = player.health;
			
		health_add = 0;
		hurtTime = gettime();
		
		////
		}
	}	
}

playerBreathingSound(healthcap)
{
	self endon("joined_spectators");
	self endon("joined_team");
	self endon("killed_player");
	self endon("disconnect");
	self endon("end_healthregen");
	
	wait (2);
	player = self;
	for (;;)
	{
		wait (0.2);
		if (player.health <= 0)
			return;
			
		// Player still has a lot of health so no breathing sound
		if (player.health >= healthcap)
			continue;
			
		player playLocalSound("breathing_hurt");
		wait .784;
		wait (0.1 + randomfloat (0.8));
	}
}

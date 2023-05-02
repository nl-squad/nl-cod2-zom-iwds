init()
{
	precacheShellShock("default");
	precacheShellShock("duhoc_boatexplosion");
}

shellshockOnDamage(cause, damage, weapon)
{
	if(weapon == "shock_mp")
	{
		time = damage;
		half_time = time * 0.5; 

		if(isDefined(self.hud_shocked))	{ self.hud_shocked Destroy(); }

		self.hud_shocked = newClientHudElem(self);
		self.hud_shocked.sort = -2;
		self.hud_shocked.horzAlign = "fullscreen";
		self.hud_shocked.vertAlign = "fullscreen";
		self.hud_shocked.x = 0;
		self.hud_shocked.y = 0;
		self.hud_shocked setShader("white", 640, 480);

		wait( half_time ); 

		if(isDefined(self.hud_shocked))
		{
			self.hud_shocked FadeOverTime( half_time ); 
			self.hud_shocked.alpha = 0; 
		}

		wait( half_time ); 
		
		if(isDefined(self.hud_shocked))	{ self.hud_shocked Destroy(); }
	}
	else if(weapon == "stun_mp")
	{
		shock = damage * 1.62;
		self shellshock("duhoc_boatexplosion", shock);

		time = damage / 8;
		half_time = time * 0.5; 

		if(isdefined(self.hud_shocked))
		{
			self.hud_shocked destroy();
		}

		self.hud_shocked = newClientHudElem(self);
		self.hud_shocked.sort = -2;
		self.hud_shocked.alignX = "center";
		self.hud_shocked.alignY = "middle";
		self.hud_shocked.x = 320;
		self.hud_shocked.y = 240;
		self.hud_shocked setShader("white", 1920, 480);	

		wait( half_time ); 

		self.hud_shocked FadeOverTime( half_time ); 
		self.hud_shocked.alpha = 0; 

		wait( half_time ); 

		wait 0.2;

		self unlink();
		self.hud_shocked Destroy(); 
	}
			
	else if( cause == "MOD_EXPLOSIVE" ||
		cause == "MOD_GRENADE" ||
		cause == "MOD_GRENADE_SPLASH" ||
		cause == "MOD_PROJECTILE" ||
		cause == "MOD_PROJECTILE_SPLASH" )
	{
		time = 0;
		
		if(damage >= 90)
			time = 4;
		else if(damage >= 50)
			time = 3;
		else if(damage >= 25)
			time = 2;
		else if(damage > 10)
			time = 1;
		
		if(time)
			self shellshock("default", time);
	}
}
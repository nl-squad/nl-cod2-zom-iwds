#include blanco\utils;

init()
{
	precacheShader("damage_feedback");

     blanco\dispatcher::registerCallback("connected", ::onPlayerConnect);
}

onPlayerConnect()
{
     createHudElement("damagefeedback", -12, -12, "left", "top", 0);
     self.hud["damagefeedback"].alpha = 0;
	self.hud["damagefeedback"].horzAlign = "center";
	self.hud["damagefeedback"].vertAlign = "middle";
	self.hud["damagefeedback"].archived = true;
	self.hud["damagefeedback"] setShader("damage_feedback", 24, 24);
}

updateDamageFeedback()
{
	self.hud["damagefeedback"].alpha = 1;
	self.hud["damagefeedback"] fadeOverTime(1);
	self.hud["damagefeedback"].alpha = 0;
	self playlocalsound("MP_hit_alert");
}

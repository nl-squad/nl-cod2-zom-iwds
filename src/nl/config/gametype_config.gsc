Configure()
{
	blanco\config::setMapGametype("mp_fakhre", level.GAMETYPE_STAGE, blanco\utils::a(4, level.SPAWN_STRATEGY_CTF));
	blanco\config::setMapGametype("mp_stages", level.GAMETYPE_STAGE, blanco\utils::a(4, level.SPAWN_STRATEGY_STAGES));
}

Configure()
{
    // blanco\config::setZombiesOnRestart(minPlayers, zombiesOnRestart, theLevel);
    // theLevel = level.killstreakEasyLevel, level.killstreakMediumLevel, level.killstreakHardLevel

    blanco\config::setZombiesOnRestart(12, 2, level.killstreakEasyLevel);
    blanco\config::setZombiesOnRestart(20, 3, level.killstreakEasyLevel);
    blanco\config::setZombiesOnRestart(28, 4, level.killstreakEasyLevel);

    blanco\config::setZombiesOnRestart(14, 2, level.killstreakMediumLevel);
    blanco\config::setZombiesOnRestart(22, 3, level.killstreakMediumLevel);
    blanco\config::setZombiesOnRestart(30, 4, level.killstreakMediumLevel);

    blanco\config::setZombiesOnRestart(16, 2, level.killstreakHardLevel);
    blanco\config::setZombiesOnRestart(24, 3, level.killstreakHardLevel);
    blanco\config::setZombiesOnRestart(32, 4, level.killstreakHardLevel);
}

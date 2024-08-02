Configure()
{
    // blanco\config::setZombiesOnRestart(minPlayers, zombiesOnRestart, theLevel);
    // theLevel = level.killstreakEasyLevel, level.killstreakMediumLevel, level.killstreakHardLevel

    blanco\config::setZombiesOnRestart(11, 3, level.killstreakEasyLevel);
    blanco\config::setZombiesOnRestart(19, 4, level.killstreakEasyLevel);
    blanco\config::setZombiesOnRestart(28, 5, level.killstreakEasyLevel);
    blanco\config::setZombiesOnRestart(34, 6, level.killstreakEasyLevel);

    blanco\config::setZombiesOnRestart(11, 2, level.killstreakMediumLevel);
    blanco\config::setZombiesOnRestart(19, 3, level.killstreakMediumLevel);
    blanco\config::setZombiesOnRestart(28, 4, level.killstreakMediumLevel);
    blanco\config::setZombiesOnRestart(34, 5, level.killstreakMediumLevel);

    blanco\config::setZombiesOnRestart(11, 2, level.killstreakHardLevel);
    blanco\config::setZombiesOnRestart(19, 3, level.killstreakHardLevel);
    blanco\config::setZombiesOnRestart(28, 4, level.killstreakHardLevel);
    blanco\config::setZombiesOnRestart(34, 5, level.killstreakHardLevel);
}


#include blanco\utils;
#include blanco\menus\menus_core;

Configure()
{
    hunters = [];
    hunters["1"] = CreateMenuSelection(1, "invisible", "Invisibility (^75^9s)", ::invisiblePrice, blanco\actions\invisible::Activate, blanco\actions\invisible::CanUse, undefined, a(5));
    hunters["2"] = CreateMenuSelection(2, "mine", "Mine", ::minePrice, blanco\actions\mine::Activate, blanco\actions\mine::CanUse);
    hunters["3"] = CreateMenuSelection(8, "elixir", "Vital Elixir", ::elixirPrice, blanco\actions\elixir::Activate);
    hunters["4"] = CreateMenuSelection(4, "bubble", "Bubble (^712^9s)", ::bubblePrice, blanco\actions\bubble::Activate);
    hunters["5"] = CreateMenuSelection(5, "freeze_zombies", "Freeze Zombies (^75^9s)", ::freeze_zombiesPrice, blanco\actions\freeze::Activate);
    hunters["6"] = CreateMenuSelection(7, "c4", "C4 Explosives x3", ::c4Price, blanco\actions\c4::Activate, undefined, undefined, a(3));
    RegisterMenu("hunters", ::VMenuDefaultHandler, hunters, blanco\menus\shops::canUseHuntersMenu);

    // zombies = [];
    // zombies["2"] = CreateMenuSelection(8, "anti_invi_grenades", "Anti-Invi Nade", ::anti_invi_grenadesPrice, blanco\menus\shops::giveAntiInviNades, undefined, undefined, a(1));
    // RegisterMenu("zombies", ::VMenuDefaultHandler, zombies, blanco\menus\shops::canUseZombiesMenu);

    vips = [];
    vips["1"] = CreateMenuSelection(1, "bash_king", "Bash King Bat ^3Free", 0, blanco\menus\shops::giveBashKing);
    vips["2"] = CreateMenuSelection(2, "exploding_ball", "Exploding Ball", ::exploding_ballPrice, blanco\actions\exploding_ball::Activate);
    vips["3"] = CreateMenuSelection(3, "napalm", "Napalm", ::napalmPrice, blanco\actions\napalm::Activate, blanco\actions\napalm::CanUse);
    vips["4"] = CreateMenuSelection(4, "rage", "Rage (^730^9s)", ::rageModePrice, blanco\actions\rage::Activate, blanco\actions\rage::CanUse, undefined, a(30));
    vips["5"] = CreateMenuSelection(5, "emp", "EMP (^720^9s)", ::empPrice, blanco\actions\emp::Activate, blanco\actions\emp::CanUse, undefined, a(20));
    vips["6"] = CreateMenuSelection(6, "spawn_beacon", "Spawn Beacon", ::spawn_beaconPrice, blanco\actions\spawn_beacon::Activate, blanco\actions\spawn_beacon::CanUse);
    
    RegisterMenu("vips", ::VMenuDefaultHandler, vips, blanco\menus\shops::canUseVipsMenu);
}

invisiblePrice(usageTimes)
{
    return 500 + 100 * usageTimes;
}

minePrice(usageTimes)
{
    return 500 + 100 * usageTimes;
}

elixirPrice(usageTimes)
{
    return 500 + 100 * usageTimes;
}

bubblePrice(usageTimes)
{
    return 750 + 150 * usageTimes;
}

freeze_zombiesPrice(usageTimes)
{
    return 750 + 150 * usageTimes;
}

c4Price(usageTimes)
{
    return 1500 + 300 * usageTimes;
}

potatoesPrice(usageTimes)
{
    return 250 + 50 * usageTimes;
}

hologramsPrice(usageTimes)
{
    return 250 + 50 * usageTimes;
}

toxicMeatPrice(usageTimes)
{
    return 250 + 50 * usageTimes;
}

anti_invi_grenadesPrice(usageTimes)
{
    return 500 + 100 * usageTimes;
}

speedPrice(usageTimes)
{
    return 500 + 100 * usageTimes;
}

high_jumpPrice(usageTimes)
{
    return 500 + 100 * usageTimes;
}

zombie_grenadesPrice(usageTimes)
{
    return 1250 + 250 * usageTimes;
}

exploding_ballPrice(usageTimes)
{
    return 500 + 100 * usageTimes;
}

napalmPrice(usageTimes)
{
    return 1000 + 200 * usageTimes;
}

rageModePrice(usageTimes)
{
    return 1000 + 200 * usageTimes;
}

empPrice(usageTimes)
{
    return 1500 + 300 * usageTimes;
}

spawn_beaconPrice(usageTimes)
{
    return 1500 + 300 * usageTimes;
}
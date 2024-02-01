
#include blanco\utils;
#include blanco\menus\menus_core;

main()
{
    hunters = [];
    hunters["1"] = CreateMenuSelection(1, "invisible", "Invisible (^75^9s)", ::invisiblePrice, blanco\actions\invisible::Activate, blanco\actions\invisible::CanUse, undefined, a(5));
    hunters["2"] = CreateMenuSelection(2, "mine", "Mine", 500, blanco\actions\mine::Activate, blanco\actions\mine::CanUse);
    hunters["3"] = CreateMenuSelection(3, "scissors", "Scissors (^710^9)", 600, blanco\menus\shops::giveScissors, undefined);
    hunters["4"] = CreateMenuSelection(4, "bubble", "Bubble (^712^9s)", 800, blanco\actions\bubble::Activate);
    hunters["5"] = CreateMenuSelection(5, "freeze_zombies", "Freeze Zombies (^715^9s)", 800, blanco\actions\freeze::Activate);
    hunters["6"] = CreateMenuSelection(7, "c4", "4x C4", 1600, blanco\actions\c4::Activate, undefined, undefined, a(4));
    RegisterMenu("hunters", ::VMenuDefaultHandler, hunters, blanco\menus\shops::canUseHuntersMenu);

    zombies = [];
    zombies["1"] = CreateMenuSelection(1, "potatoes", "Potatoes (^73^9)", 300, blanco\menus\shops::givePotatoes, undefined, undefined, a(3));
    zombies["2"] = CreateMenuSelection(2, "holograms", "Holograms", 300, blanco\actions\holograms::Activate, blanco\actions\holograms::CanUse);
    zombies["3"] = CreateMenuSelection(8, "anti_invi_grenades", "Anti-Invi Nades (^72^9)", 400, blanco\menus\shops::giveAntiInviNades, undefined, undefined, a(2));
    zombies["4"] = CreateMenuSelection(4, "speed", "Speed", 400, blanco\menus\shops::giveSpeedBat, blanco\menus\shops::canBuySpeed);
    zombies["5"] = CreateMenuSelection(5, "high_jump", "High Jump", 550, blanco\actions\super_jump::Activate);
    zombies["6"] = CreateMenuSelection(6, "zombie_grenades", "Zombie Nade", 950, blanco\menus\shops::giveZombieNades, undefined, undefined, a(1));
    RegisterMenu("zombies", ::VMenuDefaultHandler, zombies, blanco\menus\shops::canUseZombiesMenu);

    vips = [];
    vips["1"] = CreateMenuSelection(1, "bash_king", "Bash King ^3Free", 0, blanco\menus\shops::giveBashKing);
    vips["2"] = CreateMenuSelection(2, "exploding_ball", "Exploding Ball", 600, blanco\actions\exploding_ball::Activate);
    vips["3"] = CreateMenuSelection(3, "napalm", "Napalm", 1600, blanco\actions\napalm::Activate, blanco\actions\napalm::CanUse);
    vips["4"] = CreateMenuSelection(4, "rambo_mode", "Rambo Mode (^740^9s)", 1600, blanco\actions\rambo::Activate, blanco\actions\rambo::CanUse, undefined, a(40));
    vips["5"] = CreateMenuSelection(5, "emp", "EMP (^730^9s)", 1600, blanco\actions\emp::Activate, blanco\actions\emp::CanUse, undefined, a(30));
    vips["6"] = CreateMenuSelection(6, "nuke", "Nuke", 10000, blanco\actions\nuke::Activate, blanco\actions\nuke::CanUse);
    RegisterMenu("vips", ::VMenuDefaultHandler, vips, blanco\menus\shops::canUseVipsMenu);
}

invisiblePrice(usageTimes)
{
    return 500 + 100 * usageTimes;
}

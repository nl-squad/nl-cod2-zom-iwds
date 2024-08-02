#include blanco\utils;
#include blanco\menus\menus_core;
#include blanco\menus\menu_voice;

Configure()
{
    precacheMenu("voice_cmd");

    commands = [];
    commands["1"] = CreateVoiceSelection("Follow Me!", "US_mp_cmd_followme", "UK_mp_cmd_followme", "GE_mp_cmd_followme", "RU_mp_cmd_followme");
    commands["2"] = CreateVoiceSelection("Move in!", "US_mp_cmd_movein", "UK_mp_cmd_movein", "GE_mp_cmd_movein", "RU_mp_cmd_movein");
    commands["3"] = CreateVoiceSelection("Fall back!", "US_mp_cmd_fallback", "UK_mp_cmd_fallback", "GE_mp_cmd_fallback", "RU_mp_cmd_fallback");
    commands["4"] = CreateVoiceSelection("Suppressing fire!", "US_mp_cmd_suppressfire", "UK_mp_cmd_suppressfire", "GE_mp_cmd_suppressfire", "RU_mp_cmd_suppressfire");
    commands["5"] = CreateVoiceSelection("Attack left flank!", "US_mp_cmd_attackleftflank", "UK_mp_cmd_attackleftflank", "GE_mp_cmd_attackleftflank", "RU_mp_cmd_attackleftflank");
    commands["6"] = CreateVoiceSelection("Attack right flank!", "US_mp_cmd_attackrightflank", "UK_mp_cmd_attackrightflank", "GE_mp_cmd_attackrightflank", "RU_mp_cmd_attackrightflank");
    commands["7"] = CreateVoiceSelection("Hold this position!", "US_mp_cmd_holdposition", "UK_mp_cmd_holdposition", "GE_mp_cmd_holdposition", "RU_mp_cmd_holdposition");
    commands["8"] = CreateVoiceSelection("Regroup!", "US_mp_cmd_regroup", "UK_mp_cmd_regroup", "GE_mp_cmd_regroup", "RU_mp_cmd_regroup");
    commands["9"] = CreateVoiceSelection("Defend this position!", "US_mp_cmd_defendposition", "UK_mp_cmd_defendposition", "GE_mp_cmd_defendposition", "RU_mp_cmd_defendposition");
    RegisterMenu("quickcommands", ::VoiceMenuResponse, commands);

    statements = [];
    statements["1"] = CreateVoiceSelection("Enemy spotted!", "US_mp_stm_enemyspotted", "UK_mp_stm_enemyspotted", "GE_mp_stm_enemyspotted", "RU_mp_stm_enemyspotted");
    statements["2"] = CreateVoiceSelection("Enemy down!", "US_mp_stm_enemydown", "UK_mp_stm_enemydown", "GE_mp_stm_enemydown", "RU_mp_stm_enemydown");
    statements["3"] = CreateVoiceSelection("I'm in position.", "US_mp_stm_iminposition", "UK_mp_stm_iminposition", "GE_mp_stm_iminposition", "RU_mp_stm_iminposition");
    statements["4"] = CreateVoiceSelection("Area secure!", "US_mp_stm_areasecure", "UK_mp_stm_areasecure", "GE_mp_stm_areasecure", "RU_mp_stm_areasecure");
    statements["5"] = CreateVoiceSelection("Grenade!", "US_mp_stm_grenade", "UK_mp_stm_grenade", "GE_mp_stm_grenade", "RU_mp_stm_grenade");
    statements["6"] = CreateVoiceSelection("Sniper!", "US_mp_stm_sniper", "UK_mp_stm_sniper", "GE_mp_stm_sniper", "RU_mp_stm_sniper");
    statements["7"] = CreateVoiceSelection("Need reinforcements!", "US_mp_stm_needreinforcements", "UK_mp_stm_needreinforcements", "GE_mp_stm_needreinforcements", "RU_mp_stm_needreinforcements");
    statements["8"] = CreateVoiceSelection("Hold your fire!", "US_mp_stm_holdyourfire", "UK_mp_stm_holdyourfire", "GE_mp_stm_holdyourfire", "RU_mp_stm_holdyourfire");
    statements["9"] = CreateVoiceSelection("Man down!", "US_mp_stm_mandown", "UK_mp_stm_mandown", "GE_mp_stm_mandown", "RU_mp_stm_mandown");
    RegisterMenu("quickstatements", ::VoiceMenuResponse, statements);

    responses = [];
    responses["1"] = CreateVoiceSelection("Yes Sir!", "US_mp_rsp_yessir", "UK_mp_rsp_yessir", "GE_mp_rsp_yessir", "RU_mp_rsp_yessir");
    responses["2"] = CreateVoiceSelection("No Sir!", "US_mp_rsp_nosir", "UK_mp_rsp_nosir", "GE_mp_rsp_nosir", "RU_mp_rsp_nosir");
    responses["3"] = CreateVoiceSelection("On my way.", "US_mp_rsp_onmyway", "UK_mp_rsp_onmyway", "GE_mp_rsp_onmyway", "RU_mp_rsp_onmyway");
    responses["4"] = CreateVoiceSelection("Sorry.", "US_mp_rsp_sorry", "UK_mp_rsp_sorry", "GE_mp_rsp_sorry", "RU_mp_rsp_sorry");
    responses["5"] = CreateVoiceSelection("Great shot!", "US_mp_rsp_greatshot", "UK_mp_rsp_greatshot", "GE_mp_rsp_greatshot", "RU_mp_rsp_greatshot");
    responses["6"] = CreateVoiceSelection("Took long enough!", "US_mp_rsp_tooklongenough", "UK_mp_rsp_tooklongenough", "GE_mp_rsp_tooklongenough", "RU_mp_rsp_tooklongenough");
    responses["7"] = CreateVoiceSelection("Are you crazy?", "US_mp_rsp_areyoucrazy", "UK_mp_rsp_areyoucrazy", "GE_mp_rsp_areyoucrazy", "RU_mp_rsp_areyoucrazy");
    responses["8"] = CreateVoiceSelection("Thanks!", a("us_thanks1", "us_thanks2"), a("uk_thanks1", "uk_thanks2"), a("ge_thanks1", "ge_thanks2"), a("ru_thanks1", "ru_thanks2"));
    responses["9"] = CreateVoiceSelection("No problem!", "US_mp_rsp_noproblem", "UK_mp_rsp_noproblem", "GE_mp_rsp_noproblem", "RU_mp_rsp_noproblem");
    RegisterMenu("quickresponses", ::VoiceMenuResponse, responses);

    customVoice1 = [];
    customVoice1["1"] = CreateVoiceSelection("Ale urwal! Ale to bylo dobre!", "ale_urwal");
    customVoice1["2"] = CreateVoiceSelection("Bede gral w gre.", "bede_gral_w_gre");
    customVoice1["3"] = CreateVoiceSelection("Bro.", "bro");
    customVoice1["4"] = CreateVoiceSelection("Damn I'm good.", "damn_im_good");
    customVoice1["5"] = CreateVoiceSelection("Fuck you.", "fuck_you");
    customVoice1["6"] = CreateVoiceSelection("Miota nim jak szatan!", "miota_nim_jak_szatan");
    customVoice1["7"] = CreateVoiceSelection("*Risitas laugh*", "risitas_laugh");
    customVoice1["8"] = CreateVoiceSelection("Jestem kaskaderem!", "jestem_kaskaderem");
    customVoice1["9"] = CreateVoiceSelection("Do mycia!", "do_mycia");
    RegisterMenu("customvoice1", ::customVoice1MenuResponse, customVoice1);

    customVoice2 = [];
    customVoice2["1"] = CreateVoiceSelection("Another one.", "another_one");
    customVoice2["2"] = CreateVoiceSelection("Bozzy czy Ty to widzisz?", "boze_czy_ty_to_widzisz");
    customVoice2["3"] = CreateVoiceSelection("Dobre, pomaranczowe.", "dobre_pomaranczowe");
    customVoice2["4"] = CreateVoiceSelection("Damn.", "damn");
    customVoice2["5"] = CreateVoiceSelection("Jestem hardkorem!", "jestem_hardkorem");
    customVoice2["6"] = CreateVoiceSelection("OMG!", "omg");
    customVoice2["7"] = CreateVoiceSelection("To jest zajebiste!", "to_jest_zajebiste");
    customVoice2["8"] = CreateVoiceSelection("Arrrgh, this sucks.", "yeah_this_sucks");
    customVoice2["9"] = CreateVoiceSelection("Nossa nossa!", "nossa_nossa");
    RegisterMenu("customvoice2", ::customVoice2MenuResponse, customVoice2);
}

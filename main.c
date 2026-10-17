#include "desktop/host_main.h"
#include "generic_frame_driver.h"
#include "program_module.h"

int main(int argc, char **argv)
{
    SnesDesktopHostGame game = {0};

    game.display_name = "Macross: Scrambled Valkyrie";
    game.window_title = "Macross: Scrambled Valkyrie (Recompiled)";
    game.launcher_title = "Macross: Scrambled Valkyrie - Launcher";
    game.region = "JPN";
    game.rom_file = "Choujikuu Yousai Macross - Scrambled Valkyrie (Japan).sfc";
    game.expected_sha256_hex =
        "224572832b988f31a81c907f751f0292f5702a3acea5866ce6742387c7c6239d";
    game.build_version = "dev";
    game.num_players = 1;
    game.frame_width = 256;
    game.frame_height = 224;
    game.game_info =
        snes_generic_frame_driver_game_info("Macross");

    return snesrecomp_desktop_main(&game, argc, argv);
}

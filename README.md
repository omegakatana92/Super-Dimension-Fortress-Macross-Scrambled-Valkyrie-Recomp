# Super Dimension Fortress Macross: Scrambled Valkyrie — Native Recompilation

Community preservation / native recompilation project targeting Windows.

## Current local development status

The Windows `Macross.exe` has been compiled and tested locally with the SNESRecomp runtime and the `recomp-ui` Dear ImGui launcher. Gameplay, graphics, audio, and ROM selection have been reported working. **The compiled binary and game-derived code are not uploaded here.**

## Build dependencies

- [RetroPortingToolKit/snesrecomp](https://github.com/RetroPortingToolKit/snesrecomp)
- [RetroPortingToolKit/recomp-ui](https://github.com/RetroPortingToolKit/recomp-ui)
- CMake, Ninja, Clang/MSVC toolchain, SDL3

The game project uses `snesrecomp_target_sdl(Macross)`, `snesrecomp_target_desktop_host(Macross)`, and `recomp_target_launcher_ui(Macross CONSOLE snes)` in CMake.

## Packaging / preservation

The tested Windows output is in the local `releases/build-launcher/` directory on the development PC. Use the preservation script supplied separately to back up the tested files and generate a ZIP.

**No ROMs, proprietary game artwork/audio, ROM-derived generated code, save files, or assets without redistribution rights should be committed or included in public releases.** A compatible legally obtained ROM is supplied by the user through the launcher.

Third-party framework components retain their own licenses. Verify provenance and licenses of all binary runtime dependencies before public distribution.

This repository is not affiliated with or endorsed by the original game's rights holders.

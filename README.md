# Super Dimension Fortress Macross: Scrambled Valkyrie — SNES Recompilation

Experimental native Windows recompilation of **Choujikuu Yousai Macross – Scrambled Valkyrie (Japan)** using [snesrecomp](https://github.com/RetroPortingToolKit/snesrecomp) and [recomp-ui](https://github.com/RetroPortingToolKit/recomp-ui).

> **Source-development repository.** A playable executable is **not** distributed here. This project is unofficial and is not affiliated with or endorsed by the game's rights holders or the framework maintainers.

## Development status

The developer has successfully built and locally tested a Windows `Macross.exe` with:

- A graphical ROM selection launcher
- Working SNES video and audio
- Successful game launch
- Normal application shutdown

These results describe the developer's local build, **not** an independently verified fresh-clone build. See [Development status](docs/DEVELOPMENT_STATUS.md) for scope and limitations.

## Repository contents

- `main.c` — desktop host entry point and game configuration
- `project.txt` — ROM identity and mapping metadata
- `config/` — small recompilation configuration files
- `CMakeLists.txt` — Windows desktop-host and launcher build integration
- `build.ps1`, `build.sh` — CMake build wrappers
- `scripts/setup-frameworks.ps1`, `scripts/setup-frameworks.sh` — fetch upstream frameworks into the expected local directories

## Dependencies and development setup

The CMake project expects `snesrecomp/`, `recomp-ui/`, and a **locally generated** `generated/` directory beside `CMakeLists.txt`.

On Windows, clone this repository and run:

```powershell
.\scripts\setup-frameworks.ps1
```

On a Unix-like environment:

```sh
sh scripts/setup-frameworks.sh
```

The setup scripts clone the upstream frameworks and their submodules where applicable. They do not download a game ROM, produce generated game code, or build an executable. Existing framework directories are left unchanged. Framework revisions are currently unpinned, and compatibility with future revisions is not guaranteed.

For developers who have separately produced compatible generated code from game data they are authorized to use, the included CMake configuration describes the local build integration. **The repository is not currently a standalone, reproducible build.** No public binary build or end-user installation process is promised.

## Copyright and distribution

**Not included in this repository:**

- Original game ROMs or other copyrighted game assets
- BIOS or firmware
- ROM-derived generated code
- Compiled executable files, DLLs, or release archives

The executable is being withheld pending review of applicable redistribution rights. A ROM-free archive alone is not sufficient to establish that a compiled recompilation contains no protected game content.

Game and framework rights remain with their respective owners. Review upstream framework licenses before redistribution or modification. Users are responsible for obtaining and using compatible game data lawfully.

## Project information

This is an experimental fan/development project and is not an official game release.

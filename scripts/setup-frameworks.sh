#!/usr/bin/env sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
command -v git >/dev/null 2>&1 || { echo 'Git is required.' >&2; exit 1; }
if [ ! -e "$ROOT/snesrecomp" ]; then
    git clone --recurse-submodules https://github.com/RetroPortingToolKit/snesrecomp.git "$ROOT/snesrecomp"
else
    echo 'Existing snesrecomp directory left unchanged.'
fi
if [ ! -e "$ROOT/recomp-ui" ]; then
    git clone --recurse-submodules https://github.com/RetroPortingToolKit/recomp-ui.git "$ROOT/recomp-ui"
else
    echo 'Existing recomp-ui directory left unchanged.'
fi
echo 'Framework setup complete. Generate game code locally before building.'

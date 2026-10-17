# Development status

## Locally tested features

The developer reports a successful native Windows `Macross.exe` build with a graphical ROM launcher, functioning video and audio, successful game launch, and normal exit.

## Publication status

The repository contains the original project entry point, small configuration files, CMake integration, and scripts for obtaining upstream framework source. It does **not** contain the compiled game or ROM-derived generated code.

## Known limitations

- A fresh-clone build has not been independently verified.
- `generated/` must be created locally; it is not distributed.
- Framework setup scripts currently clone upstream default revisions, not pinned known-good commits.
- Framework dependency and license compliance should be reviewed before a binary release.
- No public playable executable is offered pending redistribution-rights review.
- Windows is the locally tested target; other platforms are not confirmed.

## Next publication milestones

- Review and pin known-good upstream framework revisions.
- Add independently verified source-only build documentation.
- Add screenshots or media created or shared with appropriate rights.
- Review executable redistribution implications before considering public binaries.

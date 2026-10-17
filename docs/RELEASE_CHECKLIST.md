# Release checklist

- [ ] Preserve original tested build outside the Git repository.
- [ ] Verify the Windows executable launches `--launcher`, ROM picker works, and gameplay/audio work.
- [ ] Confirm that every distributed binary and asset is licensed for redistribution.
- [ ] Exclude all `.sfc`, `.smc`, ROM dumps, disc images, user save files, and personal config.
- [ ] Exclude ROM-derived generated code and proprietary game artwork/audio absent permission.
- [ ] Include applicable copyright notices and third-party license files.
- [ ] Create a ROM-free ZIP from only reviewed and approved runtime files.
- [ ] Record SHA-256 hash of the archive.
- [ ] Upload the reviewed ZIP to a GitHub Release (not as a large Git commit).
- [ ] Test the ZIP on a separate clean Windows environment with a legally obtained compatible ROM.

**Note:** A ROM-free archive alone is not necessarily free of copyrighted content. Review compiled and staged assets before posting publicly.

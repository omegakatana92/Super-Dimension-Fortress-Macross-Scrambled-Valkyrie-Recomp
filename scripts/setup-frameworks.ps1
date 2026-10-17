$ErrorActionPreference = 'Stop'
$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
if (-not (Get-Command git -ErrorAction SilentlyContinue)) { throw 'Git is required.' }
$frameworks = @(
    @{ Name = 'snesrecomp'; Url = 'https://github.com/RetroPortingToolKit/snesrecomp.git' },
    @{ Name = 'recomp-ui'; Url = 'https://github.com/RetroPortingToolKit/recomp-ui.git' }
)
foreach ($framework in $frameworks) {
    $dest = Join-Path $Root $framework.Name
    if (Test-Path -LiteralPath $dest) {
        Write-Host "Existing framework directory: $dest (not modified)"
        continue
    }
    & git clone --recurse-submodules $framework.Url $dest
    if ($LASTEXITCODE -ne 0) { throw "Failed to clone $($framework.Name)" }
}
Write-Host 'Framework setup complete. Generate game code locally before building.'

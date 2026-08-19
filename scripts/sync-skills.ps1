# Обновляет скиллы из knowledge-work-plugins в .opencode/skills.
# Запуск: powershell -ExecutionPolicy Bypass -File scripts/sync-skills.ps1
# После обновления перезапусти opencode.

$ErrorActionPreference = "Stop"
$RepoUrl = "https://github.com/SunnyS8/knowledge-work-plugins.git"
$Root = Split-Path -Parent $PSScriptRoot
$Target = Join-Path $Root ".opencode\skills"
$Tmp = Join-Path $env:TEMP "kp-sync-tmp"
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)

if (Test-Path $Tmp) { Remove-Item -Recurse -Force $Tmp }
Write-Host "Cloning $RepoUrl ..."
git clone --depth 1 $RepoUrl $Tmp
if (-not (Test-Path $Tmp)) { Write-Host "Clone failed"; exit 1 }

function Port-Skills {
    param([string]$SourceRoot, [string]$Prefix)
    if (-not (Test-Path $SourceRoot)) { return }
    foreach ($s in Get-ChildItem -Directory $SourceRoot) {
        $name = if ($Prefix) { "$Prefix-$($s.Name)" } else { $s.Name }
        $tdir = Join-Path $Target $name
        New-Item -ItemType Directory -Force -Path $tdir | Out-Null
        Copy-Item "$($s.FullName)\*" -Destination $tdir -Recurse -Force
        $sk = Join-Path $tdir "SKILL.md"
        if (-not (Test-Path $sk)) { Write-Host "SKIP (no SKILL.md): $name"; continue }
        $lines = Get-Content -Path $sk -Encoding UTF8
        $inFm = $false; $done = $false
        for ($i = 0; $i -lt $lines.Count; $i++) {
            $l = $lines[$i]
            if (-not $inFm -and $l.Trim() -eq '---') { $inFm = $true; continue }
            if ($inFm -and $l.Trim() -eq '---') { break }
            if ($inFm -and -not $done -and $l -match '^name:\s*') { $lines[$i] = "name: $name"; $done = $true; break }
        }
        [System.IO.File]::WriteAllLines($sk, $lines, $utf8NoBom)
        Write-Host "OK: $name"
    }
}

# Первая вечеринка (исключая домены со спец-инструментами)
$firstParty = @("sales","marketing","finance","data","legal","customer-support","product-management","human-resources","engineering","design","operations","enterprise-search","productivity","small-business")
foreach ($p in $firstParty) {
    Port-Skills -SourceRoot (Join-Path $Tmp "$p\skills") -Prefix $p
}

# Partner-built (свои правила префиксов)
Port-Skills -SourceRoot (Join-Path $Tmp "partner-built\slack\skills") -Prefix ""
Port-Skills -SourceRoot (Join-Path $Tmp "partner-built\brand-voice\skills") -Prefix ""
Port-Skills -SourceRoot (Join-Path $Tmp "partner-built\apollo\skills") -Prefix "apollo"
Port-Skills -SourceRoot (Join-Path $Tmp "partner-built\common-room\skills") -Prefix "common-room"

Remove-Item -Recurse -Force $Tmp
Write-Host "Done. Skills in: $Target (count: $((Get-ChildItem -Directory $Target).Count))"
Write-Host "Restart opencode to load updated skills."
$ErrorActionPreference = 'Stop'

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..')
$skillRoot = Join-Path $repoRoot 'skill'

if (-not (Test-Path -LiteralPath $skillRoot)) {
  Write-Error 'Missing skill directory.'
}

$skillMdCandidates = Get-ChildItem -LiteralPath $skillRoot -Recurse -Filter 'SKILL.md' -File
$skillMdPath = $null
foreach ($candidate in $skillMdCandidates) {
  $candidateContent = Get-Content -LiteralPath $candidate.FullName -Raw -Encoding UTF8
  if ($candidateContent -match 'name:\s*project-insight-pro') {
    $skillMdPath = $candidate.FullName
    break
  }
}

if (-not $skillMdPath) {
  Write-Error 'Could not find SKILL.md for project-insight-pro.'
}

$skillDir = Split-Path -Parent $skillMdPath
$runtimeReadme = Join-Path $skillDir 'README.md'
if (Test-Path -LiteralPath $runtimeReadme) {
  Write-Error 'Runtime skill directory must not contain README.md. Put docs in repo root or docs/.'
}

$skillMd = Get-Content -LiteralPath $skillMdPath -Raw -Encoding UTF8
if ($skillMd -notmatch 'name:\s*project-insight-pro') {
  Write-Error 'SKILL.md does not contain internal name project-insight-pro.'
}

if ($skillMd -notmatch 'github_ready:\s*true') {
  Write-Error 'SKILL.md does not contain github_ready: true.'
}

$learningsPath = Join-Path $skillDir 'learnings.md'
if (-not (Test-Path -LiteralPath $learningsPath)) {
  Write-Error 'Missing learnings.md.'
}

$referencesDir = Join-Path $skillDir 'references'
if (-not (Test-Path -LiteralPath $referencesDir)) {
  Write-Error 'Missing references directory.'
}

$referenceFiles = Get-ChildItem -LiteralPath $referencesDir -Filter '*.md' -File
if ($referenceFiles.Count -lt 3) {
  Write-Error 'Expected at least 3 markdown files in references/.'
}

$templatesDir = Join-Path $skillDir 'templates'
if (-not (Test-Path -LiteralPath $templatesDir)) {
  Write-Error 'Missing templates directory.'
}

$templateFiles = Get-ChildItem -LiteralPath $templatesDir -Filter '*.md' -File
if ($templateFiles.Count -lt 1) {
  Write-Error 'Expected at least 1 markdown file in templates/.'
}

$runtimeFiles = Get-ChildItem -LiteralPath $skillDir -Recurse -File
$localPathHits = @()
foreach ($file in $runtimeFiles) {
  $content = Get-Content -LiteralPath $file.FullName -Raw -Encoding UTF8
  if ($content -match 'C:\\Users\\|AppData\\|Documents\\New project') {
    $localPathHits += $file.FullName
  }
}

if ($localPathHits.Count -gt 0) {
  Write-Error ("Runtime files contain local personal paths: " + ($localPathHits -join '; '))
}

Write-Output 'Validation passed: project-insight-pro skill package is complete.'

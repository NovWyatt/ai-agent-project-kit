param(
  [string]$Root = (Get-Location).Path
)

$KitDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$TemplateDir = Join-Path $KitDir "templates"
$CandidateDir = Join-Path $Root ".ai-kit-candidates"

function Copy-OrCandidate($Src, $Dest) {
  $destDir = Split-Path -Parent $Dest
  New-Item -ItemType Directory -Force -Path $destDir | Out-Null
  if (Test-Path $Dest) {
    $rel = Resolve-RelativePath $Dest $Root
    $candidate = Join-Path $CandidateDir $rel
    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $candidate) | Out-Null
    Copy-Item $Src $candidate -Force
    Write-Host "[SKIP] exists: $rel -> template saved to .ai-kit-candidates/$rel"
  } else {
    Copy-Item $Src $Dest -Force
    Write-Host "[ADD] $(Resolve-RelativePath $Dest $Root)"
  }
}

function Resolve-RelativePath($Path, $Base) {
  $fullPath = [System.IO.Path]::GetFullPath($Path)
  $fullBase = [System.IO.Path]::GetFullPath($Base)
  return $fullPath.Substring($fullBase.Length).TrimStart('\','/')
}

function Copy-TreeOrCandidate($SrcDir, $DestDir) {
  Get-ChildItem -Path $SrcDir -File -Recurse | ForEach-Object {
    $rel = Resolve-RelativePath $_.FullName $SrcDir
    Copy-OrCandidate $_.FullName (Join-Path $DestDir $rel)
  }
}

Copy-OrCandidate (Join-Path $TemplateDir "AGENTS.md") (Join-Path $Root "AGENTS.md")
Copy-OrCandidate (Join-Path $TemplateDir "CLAUDE.md") (Join-Path $Root "CLAUDE.md")
Copy-OrCandidate (Join-Path $TemplateDir "PROJECT_CONTEXT.md") (Join-Path $Root "PROJECT_CONTEXT.md")
Copy-OrCandidate (Join-Path $TemplateDir "SESSION_HANDOFF.md") (Join-Path $Root "SESSION_HANDOFF.md")
Copy-TreeOrCandidate (Join-Path $TemplateDir ".claude") (Join-Path $Root ".claude")
Copy-TreeOrCandidate (Join-Path $TemplateDir ".codex") (Join-Path $Root ".codex")
Copy-TreeOrCandidate (Join-Path $TemplateDir ".agents") (Join-Path $Root ".agents")

$ClaudeSkills = Join-Path $Root ".claude/skills"
$AgentSkills = Join-Path $Root ".agents/skills"
New-Item -ItemType Directory -Force -Path $ClaudeSkills | Out-Null
if (Test-Path $AgentSkills) {
  Get-ChildItem -Path $AgentSkills -Directory | ForEach-Object {
    $dest = Join-Path $ClaudeSkills $_.Name
    if (Test-Path $dest) {
      Write-Host "[SKIP] exists: .claude/skills/$($_.Name)"
    } else {
      Copy-Item $_.FullName $dest -Recurse -Force
      Write-Host "[ADD] .claude/skills/$($_.Name)"
    }
  }
}

Write-Host ""
Write-Host "Done. Review with:"
Write-Host "  git status"
Write-Host "  git diff -- AGENTS.md CLAUDE.md PROJECT_CONTEXT.md SESSION_HANDOFF.md .claude .codex .agents"
Write-Host ""
Write-Host "If .ai-kit-candidates exists, compare those files manually before replacing existing project files."

param(
  [string]$Destination = ".\exports\as-cnpj-python"
)

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
$seedPath = Join-Path $repoRoot "packages\python-reference"
$allowedRootFiles = @(
  ".gitignore",
  "CHANGELOG.en.md",
  "CHANGELOG.es.md",
  "CHANGELOG.fr.md",
  "CHANGELOG.md",
  "CODEOWNERS",
  "CONTRIBUTING.en.md",
  "CONTRIBUTING.es.md",
  "CONTRIBUTING.fr.md",
  "CONTRIBUTING.md",
  "LICENSE",
  "pyproject.toml",
  "README.en.md",
  "README.es.md",
  "README.fr.md",
  "README.md",
  "SECURITY.en.md",
  "SECURITY.es.md",
  "SECURITY.fr.md",
  "SECURITY.md"
)

$allowedDirectories = @(
  ".github",
  "assets",
  "docs",
  "src",
  "test"
)

if ([System.IO.Path]::IsPathRooted($Destination)) {
  $resolvedDestination = $Destination
}
else {
  $targetPath = (Resolve-Path "." -ErrorAction SilentlyContinue)

  if ($null -eq $targetPath) {
    throw "Nao foi possivel resolver o diretorio atual."
  }

  $resolvedDestination = Join-Path $targetPath.Path $Destination
}

New-Item -ItemType Directory -Force -Path $resolvedDestination | Out-Null

foreach ($file in $allowedRootFiles) {
  $source = Join-Path $seedPath $file

  if (Test-Path $source) {
    Copy-Item -LiteralPath $source -Destination (Join-Path $resolvedDestination $file) -Force
  }
}

foreach ($directory in $allowedDirectories) {
  $source = Join-Path $seedPath $directory
  $target = Join-Path $resolvedDestination $directory

  if (Test-Path $source) {
    Copy-Item -LiteralPath $source -Destination $target -Recurse -Force
  }
}

$targetVectorsDir = Join-Path $resolvedDestination "vectors"
New-Item -ItemType Directory -Force -Path $targetVectorsDir | Out-Null
Copy-Item -LiteralPath (Join-Path $repoRoot "vectors\cnpj.json") -Destination (Join-Path $targetVectorsDir "cnpj.json") -Force
Copy-Item -LiteralPath (Join-Path $repoRoot "vectors\cnpj.schema.json") -Destination (Join-Path $targetVectorsDir "cnpj.schema.json") -Force

Write-Output "AS-CNPJ Python preparado em: $resolvedDestination"

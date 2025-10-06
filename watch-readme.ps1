param(
    [string]$Path = "README.md"
)

# Resolve full path
$fullPath = Resolve-Path -Path $Path
$dir = Split-Path -Path $fullPath
$file = Split-Path -Path $fullPath -Leaf

Write-Host "Watching file: $fullPath"

$fsw = New-Object System.IO.FileSystemWatcher $dir, $file
$fsw.NotifyFilter = [System.IO.NotifyFilters]'LastWrite'
$fsw.EnableRaisingEvents = $true

$action = {
    param($source, $e)
    # small debounce
    Start-Sleep -Milliseconds 200
    Write-Host "Detected change for: $($e.FullPath)"
    try {
        $content = Get-Content -Path $e.FullPath -Raw -ErrorAction Stop
        $out = Join-Path -Path (Split-Path -Path $e.FullPath) -ChildPath "README.updated.md"
        $content | Out-File -FilePath $out -Encoding utf8
        Write-Host "Wrote updated content to: $out"
    } catch {
        Write-Host "Error reading file: $_"
    }

    # Unregister and stop watcher after first detection
    Unregister-Event -SourceIdentifier 'ReadmeChanged'
    $script:stopWatcher = $true
}

Register-ObjectEvent -InputObject $fsw -EventName Changed -SourceIdentifier 'ReadmeChanged' -Action $action

# Loop until event sets stop flag
while (-not $script:stopWatcher) {
    Start-Sleep -Seconds 1
}

Write-Host 'Watcher exiting.'

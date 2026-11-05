# Flutter Experiments Interactive Runner
param (
    [string]$Experiment,
    [string]$Device = "chrome"
)

function Show-Menu {
    Clear-Host
    Write-Host "========================================================" -ForegroundColor Cyan
    Write-Host "         FLUTTER EXPERIMENTS RUNNER (1 - 10)           " -ForegroundColor Cyan
    Write-Host "========================================================" -ForegroundColor Cyan
    Write-Host " [1]  Experiment 1  : Fruit Market (Widgets & Layouts)"
    Write-Host " [2]  Experiment 2  : Responsive E-Commerce Product Catalog"
    Write-Host " [3]  Experiment 3  : Interactive Search and Real-Time Filter"
    Write-Host " [4]  Experiment 4  : Car Mileage Calculator (Form Validation)"
    Write-Host " [5]  Experiment 5  : User Profile (Named Routes & Navigation)"
    Write-Host " [6]  Experiment 6  : Student Records (SQLite Persistence)"
    Write-Host " [7]  Experiment 7  : Student Registration (Cloud Firestore)"
    Write-Host " [8]  Experiment 8  : Student Search (Cloud Firestore Query)"
    Write-Host " [9]  Experiment 9  : Student Update (Cloud Firestore Update)"
    Write-Host " [10] Experiment 10 : Secure Login / Auth (SHA-256 & Salt)"
    Write-Host "========================================================" -ForegroundColor Cyan
    Write-Host " [Q]  Exit"
    Write-Host "========================================================" -ForegroundColor Cyan
}

if ($Experiment) {
    $expDir = "Experiment-$Experiment"
    if (Test-Path $expDir) {
        Push-Location $expDir
        flutter run -d $Device
        Pop-Location
    } else {
        Write-Error "Directory $expDir not found."
    }
    exit
}

while ($true) {
    Show-Menu
    $choice = Read-Host "Select an Experiment number (1-10) or Q to exit"
    if ($choice -eq 'Q' -or $choice -eq 'q') {
        break
    }

    $expDir = "Experiment-$choice"
    if (-not (Test-Path $expDir)) {
        Write-Host "`nInvalid selection: $choice" -ForegroundColor Red
        Start-Sleep -Seconds 2
        continue
    }

    Write-Host "`nSelect target device:"
    Write-Host "  [1] Chrome (Web) - Recommended"
    Write-Host "  [2] Windows Desktop"
    Write-Host "  [3] Edge (Web)"
    $devChoice = Read-Host "Device choice [1-3] (default is 1)"

    $targetDevice = "chrome"
    if ($devChoice -eq '2') { $targetDevice = "windows" }
    elseif ($devChoice -eq '3') { $targetDevice = "edge" }

    Write-Host "`nLaunching $expDir on $targetDevice...`n" -ForegroundColor Green
    Push-Location $expDir
    flutter run -d $targetDevice
    Pop-Location

    Write-Host "`nPress Enter to return to menu..."
    Read-Host
}

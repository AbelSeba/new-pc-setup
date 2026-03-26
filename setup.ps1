# ===================================================================
# New PC Setup — WinUtil debloat + Dell Command Update
# Run in PowerShell as Administrator
# ===================================================================

# -- Check winget --------------------------------------------------
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "[!] winget non disponible." -ForegroundColor Red
    Write-Host "    Ouvrez le Microsoft Store, mettez a jour 'App Installer', puis relancez ce script." -ForegroundColor Yellow
    exit 1
}

# -- WinUtil (debloat, tweaks) -------------------------------------
Write-Host "Lancement de WinUtil..." -ForegroundColor Cyan
irm "https://christitus.com/win" | iex

# -- Dell Command Update -------------------------------------------
Write-Host ""
Write-Host "Installation de Dell Command Update..." -ForegroundColor Yellow
winget install --id Dell.CommandUpdate -e --accept-package-agreements --accept-source-agreements

Write-Host ""
Write-Host "[OK] Setup termine." -ForegroundColor Green
Write-Host "     Ouvrez Dell Command Update et cliquez 'Scan'." -ForegroundColor Cyan

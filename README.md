# New PC Setup

Ouvrir **PowerShell en Administrateur** pour chaque commande.

## 1. WinUtil (debloat + tweaks)

```powershell
irm "https://christitus.com/win" | iex
```

## 2. Dell Command Update

```powershell
winget install --id Dell.CommandUpdate -e --accept-package-agreements --accept-source-agreements
```

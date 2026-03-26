# New PC Setup

Ouvrir **PowerShell en Administrateur** pour chaque commande.

## 1. WinUtil (debloat + tweaks)

```powershell
irm "https://christitus.com/win" | iex
```

### Onglet Tweaks

Preset **Standard**, puis modifier :

Décocher :
- Run Disk Cleanup
- Remove Microsoft Edge
- Remove Xbox and Gaming Components

Cocher en plus :
- Show File Extensions
- Detailed BSoD
- Ultimate Performance Plan

### Onglet Install

Cocher tout sous **.NET Runtimes** et installer.

## 2. Dell Command Update

```powershell
winget install --id Dell.CommandUpdate -e --accept-package-agreements --accept-source-agreements
```

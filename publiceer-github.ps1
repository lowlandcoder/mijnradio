# ============================================================
#  MijnRadio naar GitHub publiceren (eerste versie)
#  Uitvoeren op de eigen computer, in de map C:\Lab023\mijnradio
#
#  Vooraf eenmalig: maak op GitHub een lege repository aan met de
#  naam "mijnradio" onder het account lowlandcoder, OF laat het
#  onderstaande gh-commando dat doen (vereist de GitHub CLI 'gh').
# ============================================================

$ErrorActionPreference = "Stop"
Set-Location "C:\Lab023\mijnradio"

# 1. Onvolledige .git-map opruimen die in de sandbox is ontstaan.
if (Test-Path ".git") {
    Remove-Item -Recurse -Force ".git"
    Write-Host "Oude .git-map verwijderd."
}

# 2. Repository opnieuw opzetten en eerste commit maken.
git init
git add -A
git commit -m "Eerste versie MijnRadio: 12 stationsknoppen, statusbalk en bediening"
git branch -M main

# 3. GitHub-repository koppelen.
#    Optie A (handmatig aangemaakt op github.com):
git remote add origin https://github.com/lowlandcoder/mijnradio.git

#    Optie B (automatisch aanmaken met de GitHub CLI). Verwijder bij gebruik
#    de regel hierboven en haal het commentaarteken weg bij de regel hieronder:
# gh repo create lowlandcoder/mijnradio --private --source . --remote origin

# 4. Publiceren.
git push -u origin main

Write-Host "Klaar. MijnRadio staat op GitHub."

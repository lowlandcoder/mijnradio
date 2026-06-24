#!/bin/bash
# ============================================================
#  MijnRadio publiceren op de webserver
#  Plaats dit script in de thuismap op de server: ~/publiceer-mijnradio.sh
#  Maak het uitvoerbaar:  chmod +x ~/publiceer-mijnradio.sh
#
#  Het haalt de laatste versie uit GitHub en kopieert de
#  websitebestanden naar de docroot /var/www/mijnradio/.
# ============================================================
set -e

cd ~/mijnradio-repo
git pull origin main

# Websitebestanden naar de docroot kopieren.
cp index.html huisstijl.css /var/www/mijnradio/

# Logo's meenemen (map kan nog leeg zijn).
mkdir -p /var/www/mijnradio/logos
cp -r logos/. /var/www/mijnradio/logos/ 2>/dev/null || true

echo "Gepubliceerd: MijnRadio bijgewerkt op /var/www/mijnradio/."

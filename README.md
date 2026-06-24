# MijnRadio

Webpagina die twaalf favoriete internetradiostations ontsluit. Per station een
knop met logo; klikken start het station. De pagina toont altijd welk station
speelt en de geluidsstatus (Speelt, Gestopt of Gedempt).

## Onderdelen

- `index.html` — de volledige pagina (opmaak en werking).
- `huisstijl.css` — de gedeelde Lab023-huisstijl (kop "Mijn + thema", glaslook).
- `logos/` — map voor eigen stationslogo's.

## Stations aanpassen

De stationslijst staat bovenin het script in `index.html` onder `CATALOGUS`.
Elk station heeft een naam, een stream-URL en eventueel een logo (bestand in
`logos/` of een volledige URL). Zonder logo verschijnen de initialen op een
gekleurde tegel. Er mogen meer dan twaalf stations in de lijst staan; de extra
stations verschijnen in de keuzelijst onder "Stations wijzigen".

De twaalf actieve plekken staan in `STANDAARD`. Een gewijzigde keuze wordt per
apparaat onthouden in de browser.

## Let op

De stream-URL's veranderen soms en zijn als werkende startset opgenomen.
Controleer ze en werk ze waar nodig bij.

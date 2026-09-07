# MijnRadio

Webpagina die twaalf favoriete internetradiostations ontsluit. Per station een
knop met logo; klikken start het station. De pagina toont altijd welk station
speelt en de geluidsstatus (Speelt, Gestopt of Gedempt).

De opmaak is gericht op eenvoudige bediening: grote knoppen, hoogstens drie
naast elkaar, en de zendernaam in een groot lettertype.

## Onderdelen

- `index.html` — de volledige pagina (opmaak en werking).
- `huisstijl.css` — de gedeelde Lab023-huisstijl (kop "Mijn + thema", glaslook).
- `logos/` — map met de stationslogo's; zie `logos/LEESMIJ.md`.

## Stations aanpassen

De stationslijst staat bovenin het script in `index.html` onder `CATALOGUS` en
telt dertig zenders.
Elk station heeft een naam, een stream-URL en een logopad. Het logopad is altijd
`logos/<id>.png`. Ontbreekt dat bestand, dan verschijnen de initialen op een
gekleurde tegel. Er mogen meer dan twaalf stations in de lijst staan; de extra
stations verschijnen in de keuzelijst onder "Stations wijzigen". Die keuzelijst
toont de zenders op naam gesorteerd; de volgorde in `CATALOGUS` blijft zoals
die is.

De twaalf actieve plekken staan in `STANDAARD`. Een gewijzigde keuze wordt per
apparaat onthouden in de browser, onder de naam in `OPSLAG`. Moet een nieuwe
standaardkeuze bij iedereen doorkomen, verhoog dan het nummer achter die naam
(nu `mijnradio.selectie.2`).

## Opmaak aanpassen

Het aantal knoppen naast elkaar staat in `.rooster` onder
`grid-template-columns`. De lettergrootte van de zendernaam staat in
`.station-naam`; onder 480 beeldpunten schermbreedte geldt de kleinere maat uit
het mediablok daaronder.

## Let op

- De stream-URL's veranderen soms. Controleer ze en werk ze waar nodig bij.
- Alleen adressen die met `https` beginnen werken. De pagina zelf loopt over
  https en de browser weigert een stream over gewoon http.
- Enkele zenders draaien op een afwijkende poort (bijvoorbeeld 8040 of 18828).
  Die kunnen op een streng afgeschermd netwerk geblokkeerd zijn.

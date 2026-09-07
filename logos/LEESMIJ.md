# Logo's van de zenders

Elke zender in `index.html` verwijst naar een bestand in deze map. De naam van
het bestand is de `id` van de zender, met de uitgang `.png`. Voorbeeld:
`sterrennl.png` hoort bij de zender met `id: "sterrennl"`.

Ontbreekt een bestand, dan toont de pagina vanzelf een gekleurde tegel met de
initialen van de zender. Er hoeft dus niets in de code te worden gewijzigd als
een logo later pas wordt toegevoegd.

## Waar een logo vandaan komt

Haal het logo van de website van de zender zelf, of van de perspagina daarvan.
Een beeldmerk van een zender is beschermd. Gebruik binnen deze afgeschermde
pagina is bedoeld om de zender herkenbaar te maken, niet om er iets mee te
verdienen. Zet geen logo van een zender neer die niet in de lijst staat.

## Eisen aan het bestand

- Vorm: PNG, vierkant, 128 bij 128 beeldpunten.
- Achtergrond: een effen lichte achtergrond, geen doorzichtige. De pagina is
  donker; een wit logo op een doorzichtige achtergrond wordt onzichtbaar.
- Grootte: houd het onder 30 kilobyte per bestand.

## Bijsnijden

Staat er een te groot of niet-vierkant bestand in de map, dan kan dit
commando het bijsnijden (Python met Pillow):

    python3 -c "from PIL import Image; b=Image.open('logos/<naam>.png').convert('RGBA'); d=Image.new('RGBA',(128,128),(255,255,255,255)); b.thumbnail((128,128)); d.paste(b,((128-b.width)//2,(128-b.height)//2),b); d.convert('RGB').save('logos/<naam>.png')"

//
//  ReiseZieleViewModel.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 12.02.23.
//

import Foundation

@MainActor class ReiseZieleViewModel: ObservableObject {
    @Published var reiseZieleModels: [ReiseZieleModel] = []
    
    // Initialize the model
    init() {
        reiseZieleModels.append(
            ReiseZieleModel(
            name: "Österreich",
            hotelStars: 322,
            description: """
**Bezeichnung**

- Die Alpenrepublik Österreich besteht zu gut 60 % aus Gebirgslandschaft. Ein Urlaub in den Bergen ist somit ideal für Wanderungen durch die einzigartige Naturlandschaft sowie für Aktivurlauber und Wintersportler aller Art. Die Komposition aus Bergen, Seen, Flüssen und Wäldern macht das Land zum Inbegriff märchenhafter Naturlandschaft. Österreich ist aufgrund der Kaiserzeit reich an historischen Kulturschätzen, die ihren Ausdruck in zahlreichen Burgen und Schlössern wiederfindet. Ein Cluburlaub in Österreich ist zudem geprägt von leidenschaftlicher Tradition und Brauchtumspflege, die sich im gesamten Alltagsleben wiederfinden. Die Gastfreundschaft der Österreicher wird dich in ihren Bann ziehen!

Ein Cluburlaub in Österreich verspricht Alpenpanorama, klare Bergluft und viel Abwechslung. Die schier endlosen Freizeitmöglichkeiten inmitten einmaliger Gebirgslandschaft reichen von Skifahren und Snowboarding im Winter über Wandern und Mountainbiking bis hin zu purer Erholung bei Wellness und verführerischer alpenländischer Kulinarik.

""",
            reiseImage:"oesterreich",
            reiseURL: "https://www.robinson.com/de/de/cluburlaub/oesterreich/?0=&utm_campaign=%5BDE%5D%20%5BSearch%5D%20%5BMixed%5D%20Generic&utm_source=bing&utm_medium=cpc&utm_content=%C3%96sterreich%20%2B%20Urlaub_%22phrase%22_%5Bexact%5D&utm_term=%C3%96sterreich%20urlaub&msclkid=e802354b24fb174166c85695678cd842")
        )
        
        reiseZieleModels.append(
            ReiseZieleModel(
            name: "Schweiz",
            hotelStars: 166,
            description: """
**Bezeichnung**

- Hotels in der Schweiz finden und das Land entdecken
Wer auf Abenteuer steht, der muss einfach in die Schweiz. Riesige Berge, glitzernde Gletscher, smaragdgrüne Seen und atemberaubende Zugstrecken, wo Sie auch hinsehen. Es ist ein mehrsprachiger Abenteuerspielplatz in Europa. Im Süden erwartet Sie das Sommerskigebiet Zermatt mit gemütlichen Chalets direkt unter dem 4.478 Meter hohen Matterhorn. Fahren Sie die gepflegten Pisten herunter oder laufen Sie durch die umliegenden Wälder – die Schneebedingungen hier sind eigentlich fast immer perfekt. Östlich davon können sie auf dem zugefrorenen St. Moritzersee ungewöhnlichen Sportarten wie Skijöring (Skifahren hinter Pferden, Hunden oder Motorschlitten), Polo nachgehen oder dem White Turf Pferderennen zusehen. Im Sommer findet man statt Schnee und Eis glitzernde Seen und weite, grüne Wälder. Vor allem in Interlaken kann man den Blick darauf genießen, entweder von der Aussichtsplattform des 1.300 Meter hohen Harder Klum oder beim aufregenden Tandem Paragliding durch die Täler. Alternativ können Sie auch in einem alten Dampfboot über die Seen schippern und sich über märchenhafte Ausblicke Fischerdörfer, Bauernhöfe und Festungen auf den Hügeln freuen. Neben all diesen aufregenden Abenteuern in der Natur, stehen ebenso aufregende Städte auf dem Erkundungsplan. Die Hauptstadt Bern überzeugt mit einer mittelalterlichen Altstadt, in Basel erwartet Sie spannende Architektur, Geneva ist bekannt für schicken Luxus und in Zürich finden Sie angesagte Kunstwerke, Bars direkt am Wasser und köstliche Fondue Restaurants. An Unterkünften mangelt es in der Schweiz nicht. Sie können aus zahlreichen Hotels wählen oder sich eine gemütliche Loge, ein Chalet oder eine Ferienwohnung aussuchen.
""",
            reiseImage: "schweiz",
            reiseURL: "https://www.booking.com/country/ch.de.html?aid=861617&label=msn-3R_glALpmU5FYAzbGPqKOg-80882863126927:tikwd-138231192664:loc-72:neo:mtp:lp127417:dec:qsschweiz%20urlaub%20beschreibung&utm_campaign=Holidays%20-%20Switzerland&utm_medium=cpc&utm_source=bing&utm_term=3R_glALpmU5FYAzbGPqKOg&msclkid=5ec5814f9a03198ff586e291df670caa")
        )
        
        
        reiseZieleModels.append(
            ReiseZieleModel(
            name: "Schweden",
            hotelStars: 237,
            description: """
**Bezeichnung**
- Das gibt es (fast) nur in Schweden - Mitternachtssonne und Polarlichter
  Je weiter du in den Norden reist, desto länger dauern die Tage im Sommer und die Nächte im Winter. Rund um die Sommersonnenwende sinkt die Sonne nicht mehr unter den Horizont. Im Winter verzaubert dich die Aurora Borealis, Polarlichter oder auch Nordlichter genannt. Wild tanzen sie in Schattierungen von hellgrün bis violett über den dunklen Nachthimmel. Die besten Chancen dieses Naturphänomen zu sehen, hast du von September bis März nördlich des Polarkreises.
- Outdoor-Fans aufgepasst: welcher Schweden-Urlaub passt zu dir?
Schweden ist das ganze Jahr über eine Reise wert. Genusswanderern empfehlen wir die aktiv und entspannt-Touren. Freu dich auf leichte Wanderungen, die erst um 10 Uhr beginnen und viel Freizeit für eigene Unternehmungen. Für alle Wanderfans, die mehr wollen als pure Natur bieten wir in Schweden Wandern plus Rad- und Kanutouren. Radfans erkunden auf zwei Rädern Südschweden. Als Winterfan entdeckst du mit deinem Huskygespann oder auf Schneeschuhen die malerische Schneelandschaft.
""",
            reiseImage: "schweden2",
            reiseURL: "https://www.wikinger-reisen.de/schweden.php?utm_source=bing&utm_medium=cpc&keyword=Wander&devide=c&utm_source=bing&utm_medium=cpc&utm_campaign=SG_Generic_Wandern&utm_term=Wander&utm_content=SG_Generic_Wandern_DSA")
        )

        reiseZieleModels.append(
            ReiseZieleModel(
            name: "Canada",
            hotelStars: 322,
            description: """
**Bezeichnung**

- Highlights der Weltreise
Selbst bei Weltreisen muss man sich auf einige Ziele festlegen. Deshalb werden verschiedene Routen angeboten. Als besonders sehenswert hat sich dabei vor allem die USA bewiesen. Ein Blick über die Weltmetropole New York an der Ostküste der Vereinigten Staaten vom Empire State Building aus steht dabei genauso auf dem Programm wie ein entspannter Tag im weichen Sand von Hawaii. Die Inselkette im Pazifischen Ozean bietet vielfältige Landschaften sowie ganzjährig warme Temperaturen. Aber auch Vancouver ist mit seinen unberührten Berglandschaften sehr lohnenswert. Fehlen darf zudem auf keinen Fall die Metropole Singapur, die einen guten Einblick in die Lebensweise und Kultur der Asiaten gibt. Wenn Sie einmal dort sind, dann sollten Sie unbedingt durch das weltberühmte Chinatown schlendern. Außerdem führt Ihre Reise meist ins Land der Kiwis. Neuseeland bietet trotz seiner überschaubaren Größe eine Vielfalt, wie nur wenig andere Länder. Die einmalige Flora und Fauna lädt zum Erkunden und Staunen ein. Und zuletzt reisen Sie noch nach Australien und sammeln die letzten Eindrücke am Sydney Opera House. Bei Weltreisen können Sie viele interessante und schöne Orte der Welt innerhalb kurzer Zeit erkunden und unvergessliche Momente erleben, an denen Sie sich noch lange erfreuen können.

""",
            reiseImage: "canada",
            reiseURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/")
        )
        
        reiseZieleModels.append(
            ReiseZieleModel(
            name: "Weltreise-Kreuzfahrt",
            hotelStars: 166,
            description: """
**Bezeichnung**

- Eingeschlossene Leistungen
DeutschsprachigeDeutschsprachige Gästebetreuung und Speisekarten verfügbar
Im Reisepreis eingeschlossen:

1 Flasche Sekt zur Begrüßung
24-Stunden Kabinenservice
Alle Mahlzeiten an Bord
Bademäntel zur Benutzung
Einige Getränke (Wasser, Eistee, Kaffee und Tee, Säfte zum Frühstück)
Gepäckbeförderung bei Ein- und Ausschiffung
Hafengebühren und Steuern
Nutzung der meisten Bordeinrichtungen
Unterhaltungsprogramm an Bord
""",
            reiseImage: "queenmary",
            reiseURL: "https://www.getyourguide.de/dubai-l173/burj-khalifa-eintrittskarte-fur-die-etagen-124-und-125-t49019/")
        )
        
        
        reiseZieleModels.append(
            ReiseZieleModel(
            name: "USA",
            hotelStars: 237,
            description: """
**Bezeichnung**
- Dank der Nähe zu beliebten Sehenswürdigkeiten wie Merlion Park (0, 7 km) und Little India (1, 5 km) können Gäste des Peninsula Hotel Singapore die bekanntesten Sehenswürdigkeiten von Singapur leicht erreichen.

Besuchen Sie während Ihres Aufenthalts in Singapur doch eines der beliebten Restaurants mit Rippchen auf der Speisekarte, z. B. Palm Beach Seafood Restaurant, Hong Kong Soya Sauce Chicken Rice & Noodle und Hawker Chan, die sich alle in der Nähe des Peninsula Excelsior Hotels befinden.

Wenn Sie etwas unternehmen möchten, sind diese beliebten Sehenswürdigkeiten ein angenehmer Zeitvertreib in Laufweite des Peninsula Singapore: Gardens by the Bay (1, 9 km), Marina Bay Sands Skypark (1, 5 km) und Orchard Road (1, 7 km).

Genießen Sie Ihren Aufenthalt in Singapur!
""",
            reiseImage: "burjKahlifa",
            reiseURL: "https://www.silversea.com/lp-silversea-hrts-consumer-11.html")
        )

        
        
        reiseZieleModels.append(
            ReiseZieleModel(
            name: "Greece",
            hotelStars: 322,
            description: """
**Bezeichnung**

- 1 (15-ounce) can chickpeas or 1 ½ cups (250 grams) cooked chickpeas
- 1/4 cup (60 ml) fresh lemon juice, 1 large lemon
- 1/4 cup (60 ml) well-stirred tahini, see our homemade tahini recipe
- 1 small garlic clove, minced
- 2 tablespoons (30 ml) extra-virgin olive oil, plus more for serving
- 1/2 teaspoon ground cumin
- Salt to taste
- 2 to 3 tablespoons (30 to 45 ml) water or aquafaba
- Dash ground paprika or sumac

""",
            reiseImage: "greece",
            reiseURL: "https://www.airbnb.de/rooms/40171070?adults=2&category_tag=Tag%3A677&children=0&infants=0&pets=0&check_in=2023-02-27&check_out=2023-03-04&federated_search_id=c98cab04-0a1e-4a12-81d4-b66d38e91f8f&source_impression_id=p3_1676526137_KGGzDniU9vcsiNC6")
        )
        
        reiseZieleModels.append(
            ReiseZieleModel(
            name: "Thailand",
            hotelStars: 166,
            description: """
**Bezeichnung**

- Über diese Unterkunft
4 Schlafzimmer zu Hause, 4 Badezimmer, Küche, Wohnzimmer, Karaoke mit privatem Pool haben Parkplatz am Partyhaus.
Um für Ihre Familie zu kochen, können Sie nur 2 Kilometer reisen, um frisches Essen zu kaufen, oder nur 7 Kilometer nach Hua Hin. Liefern Sie Lebensmittel können auch über Food Panda, Grab Food bestellt werden.
Die Unterkunft
Eine Villa mit natürlichem Blick auf das Haus und einem großen Bergblick, wenn man vom Privathaus aus blickt, ist im Art-Deco-Stil gehalten. Entworfen von den Eigentümern selbst, hat es einen anderen Stil als andere Häuser, aber das Interieur ist so eingerichtet, dass es sich wie ein Zuhause anfühlt. Die Außenseite hat einen langen Korridor am Pool, eine Esszone mit Kochnische.
""",
            reiseImage: "tailand",
            reiseURL: "https://www.airbnb.de/rooms/40171070?adults=2&category_tag=Tag%3A677&children=0&infants=0&pets=0&check_in=2023-02-27&check_out=2023-03-04&federated_search_id=c98cab04-0a1e-4a12-81d4-b66d38e91f8f&source_impression_id=p3_1676526137_KGGzDniU9vcsiNC6")
        )
        
        
        reiseZieleModels.append(
            ReiseZieleModel(
            name: "Spanien",
            hotelStars: 237,
            description: """
**Bezeichnung**
- Über diese Unterkunft
Schöne architektonisch gestaltete Villa mit 4 Schlafzimmern, Infinity-Pool und Blick von Boden zu Decke in fast jedem Zimmer auf das Meer und Cap de Creus Nationalpark, in einem schönen arbeitenden Fischerdorf in Nordspanien.
Die Unterkunft
Das Haus wurde in der New York Times und in Wallpaper vorgestellt.
Lizenznummer
HUTG-014398
""",
            reiseImage: "spain",
            reiseURL: "https://www.airbnb.de/s/Spain/homes?flexible_trip_lengths%5B%5D=one_week&query=Spanien&place_id=ChIJi7xhMnjjQgwR7KNoB5Qs7KY&refinement_paths%5B%5D=%2Fhomes&tab_id=home_tab&date_picker_type=calendar&source=structured_search_input_header&search_type=autocomplete_click")
        )


    }
    
}

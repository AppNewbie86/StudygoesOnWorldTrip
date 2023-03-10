//
//  ShowJobView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 26.02.23.
//

import SwiftUI

struct ShowReiseZieleView: View {
    let theDescription: String
    let imageName: String
    let reiseURL: String
    
    @State private var showJobs = false


    var body: some View {
        ZStack {
            Color.black.opacity(0.7)
                .ignoresSafeArea()
            
            VStack {
                ScrollView {
                    Text(.init(theDescription))
                        .padding()
                }
                
                Button(action: {
                    

                }) {
                    Text("Jobangebote")
                        .font(.body)
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(width: 150, height: 50)
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                
                
                
                Spacer()
                
                Link(
                    destination: URL(string: reiseURL)!,
                    label: {
                        ZStack {
                            Image( imageName)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .scaleEffect(0.8)
                            
                            Text("Click image for more description")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding()
                                .background(
                                Capsule()
                                    .fill(Color.orange
                                            .opacity(0.7))
                                )
                        }
                    })
                
            }
        }
    }
}

struct ShowRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        ShowReiseZieleView(
            theDescription: """
**Ingredients**
- ??ber diese Unterkunft

Genie??en Sie den herrlichen Panoramablick auf den Strand Choeng Mon und die Insel Ko Fan. Die Villa Rapha ist eine moderne Luxusvilla mit privatem Infinity-Pool. Das Hotel liegt ideal in der bestehenden Wohnanlage Horizon Villas, nur wenige Gehminuten vom Strand Choeng Mon und eine kurze Fahrt von Chaweng, Fisherman's Village und dem Flughafen entfernt. 1000 Mbit/s Glasfaser-Breitband, WLAN, Netflix und IPTV mit Hunderten von internationalen Live-TV-Kan??len und kostenlosen Filmen auf Anfrage.

Die Unterkunft

Villa Rapha ist eine Luxusvilla, die entworfen wurde, um den atemberaubenden Panoramablick auf das Meer in vollen Z??gen zu genie??en. Es verf??gt ??ber 4 Schlafzimmer, alle mit eigenem Bad und Meerblick. Die Villa Rapha ist mit ihrem privaten Infinity-Pool, modernem Interieur und gro??z??gigen Unterk??nften Ihr ideales Inselhaus.

Villa Rapha richtet sich an Familien oder Freunde, die sich nach einem ger??umigeren und pers??nlicheren Urlaubserlebnis sehnen. Perfekt zum Entspannen in privaten oder unterhaltsamen G??sten sorgen die hochmodernen Einrichtungen f??r einen unvergesslichen und angenehmen Aufenthalt.

Als Teil der bestehenden geschlossenen Wohnanlage der Horizon Villas haben G??ste vollen Zugang zu den Gemeinschaftseinrichtungen, zu denen ein Tennisplatz und ein Fitnessraum geh??ren.

Live

Im Herzen der Villa Rapha befindet sich der gro??e offene Wohn- und Essbereich mit zweifachen T??ren, die sich vollst??ndig auf eine private Poolterrasse ??ffnen.
""",
            imageName: "schweden2",
            reiseURL: "https://www.robinson.com")
    }
}


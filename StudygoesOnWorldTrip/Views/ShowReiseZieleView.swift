//
//  ShowReiseZieleView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 12.02.23.
//

import SwiftUI

struct ShowReiseZieleView: View {
    let theDescription: String
    let imageName: String
    let reiseURL: String
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.7)
                .ignoresSafeArea()
            
            VStack {
                ScrollView {
                    Text(.init(theDescription))
                        .padding()
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
                                .foregroundColor(.orange)
                                .font(.headline)
                                .padding()
                                .background(
                                Capsule()
                                    .fill(Color.black
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
            imageName: "IMGhummus",
            reiseURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/")
    }
}


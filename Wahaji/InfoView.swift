//
//  InfoView.swift
//  Wahaji
//
//  Created by Hasna Ahmad on 15/06/1445 AH.
//

import SwiftUI

struct InfoView: View {
    var star: Stars?

    var body: some View {
        if let star = star {
            ZStack{
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Image(star.starImg)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                        .accessibilityHint(star.starImg)
                        .padding()

                    Text(star.starName)
                        .font(.largeTitle).bold()
                        .foregroundColor(.white)
                        .padding()

                    Text(star.Stardescription)
                        .font(.title2)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 320, alignment: .center)
                        .padding()
                        .background(Color("buttonsBackground").opacity(0.2))
                        .cornerRadius(30)
                }
            }
        } else {
            // Handle the case where star is nil, you might want to display an error message or a default view.
            Text("Error: Star not found")
        }
    }
}


#Preview {
    InfoView(star: Stars.sampleStar[0])
}




//
//  StarsMapView.swift
//  Wahaji
//
//  Created by Hasna Ahmad on 14/06/1445 AH.
//

import SwiftUI

        
struct StarsMapView: View {
    var starType: Stars.StarType
    var filteredStars: [Stars]

    init(starType: Stars.StarType) {
        self.starType = starType
        self.filteredStars = Stars.sampleStar.filter { $0.starType == starType }
    }

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .overlay(
                    HStack(spacing: 40) {
                        VStack(spacing: 70) {
                            ForEach(filteredStars.prefix(3), id: \.id) { star in
                                NavigationLink(destination: InfoView(star: star)) {
                                    Image(star.starImg)
                                        .resizable()
                                        .frame(width: 156, height: 156)
                                        .accessibilityHint("NorthButton\(filteredStars.firstIndex(of: star)! + 2)")
                                }
                                .padding(.vertical, 30)
                            }
                        }

                        VStack(spacing: 80) {
                            ForEach(filteredStars.dropFirst(3), id: \.id) { star in
                                NavigationLink(destination: InfoView(star: star)) {
                                    Image(star.starImg)
                                        .resizable()
                                        .frame(width: 156, height: 156)
                                        .accessibilityHint("NorthButton\(filteredStars.firstIndex(of: star)! + 2)")
                                }
                                .padding(.vertical, 30)
                            }
                        }
                    }
                )
        }
    }
}





struct StarsMapView_Previews: PreviewProvider {
    static var previews: some View {
        StarsMapView(starType: .North)
    }
}
    

#Preview {
    StarsMapView(starType: .North)
}




//
//  StarsCategoryView.swift
//  Wahaji
//
//  Created by Hasna Ahmad on 13/06/1445 AH.
//

import SwiftUI

struct StarsCategoryView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .overlay(
                    VStack(spacing: 100) {
                        NavigationLink(destination: StarsMapView(starType: .North)) {
                            HStack {
                                Text(NSLocalizedString("NourthStars", comment: ""))
                                    .accessibilityLabel(NSLocalizedString("NorthStars", comment: ""))
                                    .font(.title)
                                    .foregroundColor(Color("OurYellow"))
                            }
                            .frame(width: 280, height: 170)
                            .background(Color("buttonsBackground").opacity(0.1))
                            .cornerRadius(30)
                        }

                        NavigationLink(destination: StarsMapView(starType: .South)) {
                            HStack {
                                Text(NSLocalizedString("SouthStars", comment: ""))
                                    .accessibilityLabel(NSLocalizedString("SouthStars", comment: ""))
                                    .font(.title)
                                    .foregroundColor(Color("OurYellow"))
                            }
                            .frame(width: 280, height: 170)
                            .background(Color("buttonsBackground").opacity(0.1))
                            .cornerRadius(30)
                        }
                    }
                )
        }
    }
}

#Preview {
    StarsCategoryView()
}

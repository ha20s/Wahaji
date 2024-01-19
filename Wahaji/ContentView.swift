//
//  ContentView.swift
//  Wahaji
//
//  Created by Hasna Ahmad on 13/06/1445 AH.
//

import SwiftUI

struct ContentView: View {
 
    
//    var model : Stars

    
    
    var body: some View {
        NavigationView{
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        
                        VStack{
                            Spacer()
                            
                            Text(NSLocalizedString("KeyintroductionStatement", comment: ""))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .font(.title)
                                .accessibilityLabel(NSLocalizedString("KeyintroductionStatement", comment: ""))
                            
                            
                            Spacer()
                            
                            NavigationLink(destination: StarsCategoryView()
                            ) {
                                Text(NSLocalizedString("navigationIntoCategories", comment: ""))
                                    .accessibilityLabel(NSLocalizedString("navigationIntoCategories", comment: ""))
                                    .foregroundColor(Color("OurYellow"))
                                    .frame(width: 200, height: 50)
                                    .background(Color("buttonsBackground").opacity(0.1))
                                    .cornerRadius(25)
                                    .padding()
                            }
                            
                            Spacer()
                        }.padding(.horizontal, 70)
                    )
            }
        }.accentColor(Color.white)
    }
}
#Preview {
    ContentView()
}

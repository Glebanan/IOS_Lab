//
//  ContentView.swift
//  iosNaum
//
//  Created by Nes on 23.02.2024.
//

import SwiftUI

struct ContentView: View {
    var appPadding : CGFloat = 25
    var body: some View {
        ScrollView {
            VStack {
                HeaderView()
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    .padding(.leading, 25)at
                    .padding(.trailing, 25)
                Spacer().frame(height: 32)
                DoctorNotification()
                Spacer().frame(height: 21)
                SearchBar(searchBarText: "Find help or health problem resolve")
                Spacer().frame(height: 25)
                ThemesPalete(minPaleteSpace: 14, maxPaleteSpace: 101)
                Spacer().frame(height: 33)
                HStack{
                    Text("Near Doctor").font(Font.custom("Poppins", size: 18).weight(.semibold))
                        .foregroundColor(Color("primaryFontColor"))
                        Spacer()
                }
                DoctorCards()
            }
            .padding(25)
            }
        }
            
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().background(Color(.white))
    }
}

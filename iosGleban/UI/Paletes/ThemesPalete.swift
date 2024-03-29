//
//  ThemesPalete.swift
//  iosNaum
//
//  Created by Nes on 23.02.2024.
//

import Foundation
import SwiftUI

struct ThemesPalete: View {
    var seatchBarText = "Find help or health problem resolve"
    var minPaleteSpace: CGFloat = 25
    var maxPaleteSpace: CGFloat = 14
    var body: some View {
        HStack {
            PaleteUnit(paleteImage: "sun", paleteText: "Covid 21")
            Spacer().frame(minWidth: minPaleteSpace, maxWidth: maxPaleteSpace)
            PaleteUnit(paleteImage: "profile-add", paleteText: "Doctor")
            Spacer().frame(minWidth: minPaleteSpace, maxWidth: maxPaleteSpace)
            PaleteUnit(paleteImage: "link", paleteText: "He")
            Spacer().frame(minWidth: minPaleteSpace, maxWidth: maxPaleteSpace)
            PaleteUnit(paleteImage: "hospital", paleteText: "Clinic")
            
        }
    }
}

struct ThemesPalete_Previews: PreviewProvider {
    static var previews: some View {
        ThemesPalete(maxPaleteSpace: 99).padding(25)
    }
}

//
//  DoctorProfile.swift
//  iosNaum
//
//  Created by Nes on 23.02.2024.
//

import Foundation
import SwiftUI

struct DoctorProfile: View {
    var doctorImage = "doctor photo"
    var doctorName = "Dr. Place Holder"
    var doctorSpeciality = "General Doctor"
    var nameFont: Font = Font.custom("Poppins", size: 16).weight(.bold)
    var nameFontColor: Color = Color("notifNameFontColor2")
    var specialityFontColor: Color = Color("secondaryFontColor")
    var specialityFont: Font = Font.custom("Poppins", size: 14)
    var body: some View {
        HStack{
            Image(doctorImage).resizable().aspectRatio(contentMode:.fit).frame(width: 48).background(Color.white).clipShape(Circle())
            Spacer().frame(width: 12)
            VStack(alignment: .leading, spacing: 16) {
                Text(doctorName).font(
                    nameFont
                )
                .foregroundColor(nameFontColor)
                Text(doctorSpeciality)
                    .font(specialityFont)
                    .foregroundColor(specialityFontColor)
            }
        }
        .frame(height: 48)
    }
}

struct DoctorProfile_Previews: PreviewProvider {
    static var previews: some View {
        DoctorProfile().padding(25)
    }
}

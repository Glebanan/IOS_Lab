//
//  DoctorCard.swift
//  iosNaum
//
//  Created by Nes on 24.02.2024.
//

import Foundation
import SwiftUI

struct DoctorCard: View {
    var doctorImage = "doctor photo"
    var framePadding: CGFloat = 21
    var doctorName = "Dr. Place Holder"
    var doctorSpeciality = "General Doctor"
    var notificationMinWidth: CGFloat = 326
    var notificationMaxWidth: CGFloat = 1001
    var rateStr = "0.0 (0 Reviews)"
    var distanceStr = "1.2 KM"
    
    var body: some View {
        VStack{
            HStack {
                DoctorProfile(doctorImage: doctorImage)
                Spacer()
                Image("location")
                Text(distanceStr).foregroundColor(Color("secondaryFontColor"))
                
            }
            Divider().overlay(Color("notificationDividerColor"))
                .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
            HStack {
                Image("clock-orange")
                Text(rateStr).foregroundColor(.orange)
                Spacer()
                Image("clock-blue")
                Text(distanceStr).foregroundColor(.blue)
            }
        }
        .padding(framePadding)
        .background(Color("search_bar_background"))
        .cornerRadius(12)
        .frame(minWidth: notificationMinWidth,maxWidth: notificationMaxWidth)
    }
}

struct DoctorCard_Previews: PreviewProvider {
    static var previews: some View {
        DoctorCard().padding(25)
    }
}

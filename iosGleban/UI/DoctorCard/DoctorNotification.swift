//
//  DoctorNotification.swift
//  iosNaum
//
//  Created by Nes on 23.02.2024.
//

import Foundation
import SwiftUI

struct DoctorNotification : View {
    var framePadding: CGFloat = 21
    var doctorName = "Dr. Place Holder"
    var doctorSpeciality = "Main Doctor"
    var doctorDate = "Wensday, 9 February"
    var doctorTime = "10:00 - 13:18 AM"
    var notificationMinWidth: CGFloat = 327
    var notificationMaxWidth: CGFloat = 1000
    
    var body: some View {
        VStack {
            HStack {
                DoctorProfile(doctorName: doctorName,doctorSpeciality: doctorSpeciality, nameFontColor: Color("notifNameFontColor1"),
                              specialityFontColor: Color("notifSpecialisationFontColor1"))
                Spacer()
                Image("arrow-right").frame(width: 24, height: 24)
            }.frame(height: 47)
            
            Divider().overlay(Color("notificationDividerColor"))
                .padding(EdgeInsets(top: 17, leading: 0, bottom: 17, trailing: 0))
            HStack {
                HStack {
                    Image("calendar-2")
                    Spacer().frame(width:9)
                    Text(doctorDate).foregroundColor(.white)
                }.frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    Image("clock")
                    Spacer().frame(width:9)
                    Text(doctorTime).foregroundColor(.white)
                }.frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .padding(framePadding)
        .background(Color(red: 0.29, green: 0.53, blue: 2))
        .cornerRadius(13)
        .frame(minWidth: notificationMinWidth,maxWidth: notificationMaxWidth)
    }
}

struct DoctorNotification_Previews: PreviewProvider {
    static var previews: some View {
        DoctorNotification(doctorName: "Dr. Place Holder", notificationMinWidth: 327, notificationMaxWidth: 327)
    }
}

//
//  DoctorCards.swift
//  iosNaum
//
//  Created by Nes on 24.02.2024.
//

import Foundation
import SwiftUI

struct DoctorCards: View {
    var body: some View {
        VStack {
            DoctorCard(doctorImage: "doctor photo 2", doctorName: "Dr. Joseph Brosito")
            Spacer().frame(height: 12)
            DoctorCard(doctorImage: "doctor photo")
        }
        
    }
}

struct DoctorCards_Previews: PreviewProvider {
    static var previews: some View {
        DoctorCards()
    }
}


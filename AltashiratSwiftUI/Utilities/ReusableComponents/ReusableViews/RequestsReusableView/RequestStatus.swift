//
//  RequestStatus.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import SwiftUI

enum RequestStatus {
    case recieved
    case underReview
    case accepted
    case rejected
    
    var text: some View {
        switch self {
        case .recieved:
            Text("Order recieved")
                .frame(height: 22)
                .font(Fonts.extraBold.getFont(size: 14))
                .foregroundStyle(.orderRecieved)
            
        case .underReview:
            Text("Under Review")
                .frame(height: 22)
                .font(Fonts.extraBold.getFont(size: 14))
                .foregroundStyle(.orderUnderReview)

        case .accepted:
            Text("Accepted")
                .frame(height: 22)
                .font(Fonts.extraBold.getFont(size: 14))
                .foregroundStyle(.orderAccepted)

        case .rejected:
            Text("Rejected")
                .frame(height: 22)
                .font(Fonts.extraBold.getFont(size: 14))
                .foregroundStyle(.orderRejected)

        }
    }
}

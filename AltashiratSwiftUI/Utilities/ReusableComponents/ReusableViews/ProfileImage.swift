//
//  ProfileImage.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 03/06/2025.
//
import SwiftUI

struct ProfileImage: View {
    
    @Binding var image: Image?
    
    var body: some View {
        (image ?? Icons.profilePlaceholder.imageOriginal)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 87, height: 87)
            .clipShape(.circle)
            .background {
                Circle()
                    .stroke(lineWidth: 3)
                    .foregroundColor(.white)
                    .background {
                        Circle()
                            .stroke(lineWidth: 7)
                            .foregroundColor(.first)
                    }
            }
    }
}


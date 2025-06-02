//
//  ReusableBackButton.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 29/05/2025.
//
import SwiftUI

struct ReusableBackButton: View {
    let title : String
    let action: () -> Void
    
    
    var body: some View {
        HStack(spacing: 0) {

            Button{
                action()
            } label: {
                    
                    Icons.backButton.imageOriginal
                    .scaleEffect(x: -1, y: 1)

            }
            .padding(.leading, 14)
            
            Text(title)
                .padding(.leading, 12)
                .font(Fonts.extraBold.getFont(size: 16))
                .foregroundStyle(.text)
            
            Spacer()
            
        }
    }
}

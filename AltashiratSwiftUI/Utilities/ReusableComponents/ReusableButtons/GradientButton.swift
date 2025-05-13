//
//  GradientButton.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 12/05/2025.
//
import SwiftUI
struct GradientButton :View {
    var title:String
    var action : ()->Void
    var body: some View {
        Button {
            action()
        }
        label: {
            ZStack {
                LinearGradient(colors:[.first,.second,.third],startPoint: .leading, endPoint: .trailing)
                HStack(spacing:10) {
                    Text(title)
                        .font(Fonts.bold.getFont(size: 16))
                        .foregroundColor(.white)
                    Icons.loginIcon.imageOriginal
                }
            }
        }
        .frame(width:204,height:46)
        .clipShape(.capsule)
        .buttonBorderShape(.capsule)

    }
    
}

#Preview {
    GradientButton(title: "Login") {
        
    }
}

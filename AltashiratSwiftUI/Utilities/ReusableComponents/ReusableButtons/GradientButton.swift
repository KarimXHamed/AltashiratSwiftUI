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
    var image:Image?
    var height: CGFloat = 46
    
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
                    if let image = image{
                        image
                    }
                }
            }
        }
        .frame(height: height)
        .clipShape(.capsule)

    }
    
}

//#Preview {
//    GradientButton(title: "Login",fra) {
//
//    }
//}

//
//  PasswordReusableView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/05/2025.
//
import SwiftUI
struct PasswordReusableView:View {
    @Binding var text:String
    var errorText:String = ""
    var body : some View {
        VStack(alignment: .leading,spacing:4) {
            Text("Password")
                .frame(height: 26)
                .font(Fonts.bold.getFont(size: 16))
                .foregroundColor(.text)
            PasswordTextField(text: $text)
            if errorText != ""{
                Text(errorText)
                    .font(Fonts.light.getFont(size: 12))
                    .foregroundColor(.red)
            }

        }
    }
    
}
//#Preview {
//    PasswordReusableView()
//}

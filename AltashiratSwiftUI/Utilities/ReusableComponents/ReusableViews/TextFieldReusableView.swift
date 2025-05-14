//
//  TextFieldReusableView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/05/2025.
//
import SwiftUI
struct TextFieldReusableView:View {
    var leftImage:String
    var placeHolder:String
    var title:String
    var errorText:String = ""
    
    @Binding var text:String

    
    var body : some View {
        VStack(alignment: .leading,spacing:4) {
            Text(title)
                .frame(height: 26)
                .font(Fonts.bold.getFont(size: 16))
                .foregroundColor(.text)
            ReusableTextField(text: $text, placeHolderText: placeHolder, leftImage: leftImage)
            if errorText != "" {
                Text(errorText)
                    .font(Fonts.light.getFont(size: 12))
                    .foregroundColor(.red)
            }

        }
    }
    
}
//#Preview {
//    TextFieldReusableView(leftImage: "profileIcon", placeHolder: "Enter Your name", title: "First Name")
//}

//
//  ReusableTextField.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 10/05/2025.
//
import SwiftUI

struct ReusableTextField : View {
    @FocusState  var isFocused:Bool
    @Binding  var text: String
    
    var placeHolderText:String
    var leftImage:String

    var body : some View {
        HStack {
            Image(leftImage)
                .frame(width: 20,height: 20)
                .padding(.leading,16)
                .padding(.trailing,8)
                .padding(.vertical,13)
            

            TextField("",
                      text: $text,
                      prompt:Text(placeHolderText)
                .font(Fonts.black.getFont(size: 14))
                .foregroundColor(.textFieldPH))
                .padding(.trailing,4)
                .focused($isFocused)
        }
        .frame(height: 46)
        .background(Color(.textFieldBG))
        .cornerRadius(23)
        .shadow(color:.textFieldShadow,radius: 4)
        .overlay(
            RoundedRectangle(cornerRadius: 23)
                .stroke(isFocused ? Color.first : Color.textFieldBG , lineWidth: 1)
        )
        .animation(.easeInOut(duration: 0.2), value: isFocused)

    }
    
}
//#Preview {
//    ReusableTextField(placeHolderText: "Enter Phone number", leftImage: "profileIcon")
//}

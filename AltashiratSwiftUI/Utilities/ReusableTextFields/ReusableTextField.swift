//
//  ReusableTextField.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 10/05/2025.
//
import SwiftUI

struct ReusableTextField : View {
    var placeHolderText:String
    var leftImage:String
    init(placeHolderText: String, leftImage: String) {
        self.placeHolderText = placeHolderText
        self.leftImage = leftImage
    }
    @State private var text: String = ""

    var body : some View {
        HStack {
            Image(leftImage)
                .frame(width: 20,height: 20)
                .padding(.leading,16)
            

            TextField(placeHolderText, text: $text)


        }
        .frame(height: 46)
        .background(Color(.textFieldBG))
        .cornerRadius(23)
        .shadow(color:.textFieldShadow,radius: 4)

    }
    
}
//#Preview {
//    ReusableTextField(placeHolderText: "Enter Phone number", leftImage: "profileIcon")
//}

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
    init(leftImage: String, placeHolder: String ,title:String) {
        self.leftImage = leftImage
        self.placeHolder = placeHolder
        self.title = title
    }
    var body : some View {
        VStack(alignment: .leading,spacing:4) {
            Text(title)
                .frame(height: 26)
                .font(.system(size: 16,weight: .bold))
                .foregroundColor(.text)
            ReusableTextField(placeHolderText: placeHolder, leftImage: leftImage)
            if errorText != ""{
                Text(errorText)
                    .font(.system(size: 12,weight: .light))
                    .foregroundColor(.red)
            }

        }
    }
    
}
#Preview {
    TextFieldReusableView(leftImage: "profileIcon", placeHolder: "Enter Your name", title: "First Name")
}

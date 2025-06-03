//
//  CountryReusableView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 03/06/2025.
//
import SwiftUI

struct CountryReusableTextField:View {
    
    var body: some View {
        HStack(spacing: 0) {
            Icons.flagIcon.imageOriginal
                .frame(width: 20,height: 20)
                .padding(.leading,16)
                .padding(.trailing,8)
                .padding(.vertical,13)
            

//            TextField("",
//                      text: $phoneNumber,
//                      prompt:Text("Enter your country")
//                .font(Fonts.black.getFont(size: 14))
//                .foregroundColor(.textFieldPH))
//                .keyboardType(.numberPad)
//                .focused($isFocused)
//
//            CountryPicker(selectedCountry: $selectedCountry, countries: $countries)
//                .frame(width: 81 , height: 46)
        }
        .frame(height: 46)
        .background(Color(.textFieldBG))
        .cornerRadius(23)
        .shadow(color:.textFieldShadow,radius: 4)
        
    }
    
}

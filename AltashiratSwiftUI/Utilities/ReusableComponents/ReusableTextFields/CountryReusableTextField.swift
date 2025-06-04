//
//  CountryReusableView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 03/06/2025.
//
import SwiftUI

struct CountryReusableTextField:View {
    @Binding var selectedCountry: CountryIdPickerModel
    @Binding var countries: [CountryIdPickerModel]
    
    var currentText: String {
        if selectedCountry.displayName.trimmingCharacters(in: .whitespaces).isEmpty{
            return "Choose your country"
        }
        return selectedCountry.displayName
    }
    var body: some View {
        HStack(spacing: 0) {
            Icons.flagIcon.imageOriginal
                .frame(width: 20,height: 20)
                .padding(.leading,16)
                .padding(.trailing,8)
                .padding(.vertical,13)
            

            Text(currentText)
                .font(Fonts.black.getFont(size: 14))
                .foregroundColor(.textFieldPH)
                .padding(.vertical, 13)
            
            Spacer()

            CountryIdPicker(selectedCountry: $selectedCountry, countries: $countries)
        }
        .frame(height: 46)
        .background(Color(.textFieldBG))
        .cornerRadius(23)
        .shadow(color:.textFieldShadow,radius: 4)
        
    }
    
}

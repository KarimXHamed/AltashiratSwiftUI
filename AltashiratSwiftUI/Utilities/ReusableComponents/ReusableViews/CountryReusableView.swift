//
//  CountryReusableView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 04/06/2025.
//
import SwiftUI

struct CountryReusableView: View {
    
    @Binding var selectedCountry: CountryIdPickerModel
    @Binding var countries: [CountryIdPickerModel]
    var body: some View {
        
        VStack(alignment: .leading,spacing:4) {
            Text("Country")
                .frame(height: 26)
                .font(Fonts.bold.getFont(size: 16))
                .foregroundColor(.text)
            
            CountryReusableTextField(selectedCountry: $selectedCountry,
                                     countries: $countries)

        }
        
    }
}

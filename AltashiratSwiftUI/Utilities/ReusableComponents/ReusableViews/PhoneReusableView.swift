//
//  PhoneReusableView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/05/2025.
//
import SwiftUI
struct PhoneReusableView:View {
    @Binding var phoneNumber:String
    @Binding var selectedCountry:CountryPickerModel
    @Binding var countries:[CountryPickerModel]
    var errorText:String = ""
    var body : some View {
        VStack(alignment: .leading,spacing:4) {
            Text("Phone")
                .frame(height: 26)
                .font(Fonts.bold.getFont(size: 16))
                .foregroundColor(.text)
                .frame(height: 26)
            PhoneTextField(countries: $countries, selectedCountry: $selectedCountry, phoneNumber: $phoneNumber)
            if errorText != ""{
                Text(errorText)
                    .font(Fonts.light.getFont(size: 12))
                    .foregroundColor(.red)
            }
        }
    }
    
}
//#Preview {
//    PhoneReusableView()
//}

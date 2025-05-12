//
//  PhoneTextField.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/05/2025.
//
import SwiftUI
struct PhoneTextField:View {
    @State private var text: String = ""

    var body : some View {
        HStack {
            Image("mobileIcon")
                .frame(width: 20,height: 20)
                .padding(16)

            

            TextField("Enter your phone", text: $text)
                .keyboardType(.numberPad)

            CountryPicker()
                .frame(width: 81 , height: 46)

        }
        .frame( height: 46)
        .background(Color(.textFieldBG))
        .cornerRadius(23)
        .shadow(color:.textFieldShadow,radius: 4)


    }
    
}
//#Preview {
//    PhoneTextField()
//}

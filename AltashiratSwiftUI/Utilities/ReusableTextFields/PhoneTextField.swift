//
//  PhoneTextField.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/05/2025.
//
import SwiftUI
struct PhoneTextField:View {
    @State private var text: String = ""
    @FocusState private var isFocused:Bool

    var body : some View {
        HStack {
            Image("mobileIcon")
                .frame(width: 20,height: 20)
                .padding(.leading,16)
                .padding(.trailing,8)
                .padding(.vertical,13)
            

            TextField("Enter your phone", text: $text)
                .keyboardType(.numberPad)
                .focused($isFocused)

            CountryPicker()
                .frame(width: 81 , height: 46)

        }
        .frame( height: 46)
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
//    PhoneTextField()
//}

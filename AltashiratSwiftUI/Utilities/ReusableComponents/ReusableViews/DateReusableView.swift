//
//  DateReusableView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 03/06/2025.
//
import SwiftUI

struct DateReusableView:View {
    @Binding var selectedDate:Date
    var body: some View {
        VStack(alignment: .leading,spacing:4) {
            Text("Birthdate")
                .frame(height: 26)
                .font(Fonts.bold.getFont(size: 16))
                .foregroundColor(.text)
            
            DateTextField(selectedDate: $selectedDate)


        }
    }
    
}

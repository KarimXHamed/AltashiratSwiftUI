//
//  DateTextField.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 03/06/2025.
//
import SwiftUI
struct DateTextField: View {
    
    @State private var selection:Date = Date()
    
    var body: some View {
        HStack(spacing: 0) {
            Icons.calenderIcon.imageOriginal
                .frame(width: 20,height: 20)
                .padding(.leading,16)
                .padding(.trailing,8)
                .padding(.vertical,13)
            
            Spacer()
            
            DatePicker("Enter your birthdate", selection: $selection,in: Date()...,displayedComponents: .date)
                .foregroundStyle(.textFieldPH)
                .font(Fonts.black.getFont(size: 14))
                .padding(.trailing,23)
            
            
            
        }
        .frame(height: 46)
        .background(Color(.textFieldBG))
        .cornerRadius(23)
        .shadow(color:.textFieldShadow,radius: 4)
    }
}

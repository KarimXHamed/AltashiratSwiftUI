//
//  PasswordTextField.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 10/05/2025.
//
import SwiftUI
struct PasswordTextField :View {
    @State private var text: String = ""
    @State private var showPassword:Bool = false
    @FocusState private var isFocused:Bool
    var body : some View {
        HStack {
            Image("lockIcon")
                .frame(width: 20,height: 20)
                .padding(.leading,16)
                .padding(.trailing,8)
                .padding(.vertical,13)

            if showPassword{
                TextField("Enter your password", text: $text)
                    .focused($isFocused)
            } else {
                SecureField("Enter your password", text: $text)
                    .focused($isFocused)
            }

            Button(action: {
                showPassword.toggle()
            }) {
                Image(systemName: showPassword ? "eye.fill" : "eye.slash.fill")
                    .foregroundColor(.gray)
                    .padding(16)

            }
        }

        .frame(height: 46)
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
//    PasswordTextField()
//}

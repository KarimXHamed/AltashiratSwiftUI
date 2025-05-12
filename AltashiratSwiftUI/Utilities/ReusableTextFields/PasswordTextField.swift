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
    var body : some View {
        HStack {
            Image("lockIcon")
                .frame(width: 20,height: 20)
                .padding(16)
            

            if showPassword{
                TextField("Enter your password", text: $text)
            } else {
                SecureField("Enter your password", text: $text)
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
    }

}
//#Preview {
//    PasswordTextField()
//}

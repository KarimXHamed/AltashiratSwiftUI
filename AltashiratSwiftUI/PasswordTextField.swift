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
            }
        }
        .padding()
        .frame(minHeight:46)
        .background(Color(.textFieldBG))
        .cornerRadius(23)
    }

}
//#Preview {
//    PasswordTextField()
//}

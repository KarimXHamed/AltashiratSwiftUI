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
            Icons.lockIcon.imageOriginal
                .frame(width: 20,height: 20)
                .padding(.leading,16)
                .padding(.trailing,8)
                .padding(.vertical,13)

            if showPassword{
                TextField("",
                          text: $text,
                          prompt:Text("Enter your password")
                    .font(Fonts.black.getFont(size: 14))
                    .foregroundColor(.textFieldPH))
                    .focused($isFocused)
            } else {
                SecureField("",
                            text: $text,
                            prompt: Text("Enter your password")
                    .font(Fonts.black.getFont(size: 14))
                    .foregroundColor(.textFieldPH))
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

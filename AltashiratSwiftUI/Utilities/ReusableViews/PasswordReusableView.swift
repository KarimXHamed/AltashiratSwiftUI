//
//  PasswordReusableView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/05/2025.
//
import SwiftUI
struct PasswordReusableView:View {
    var errorText:String = ""
    var body : some View {
        VStack(alignment: .leading,spacing:4) {
            Text("Password")
                .frame(height: 26)
                .font(.system(size: 16,weight: .bold))
                .foregroundColor(.text)
            PasswordTextField()
            if errorText != ""{
                Text(errorText)
                    .font(.system(size: 12,weight: .light))
                    .foregroundColor(.red)
            }

        }
    }
    
}
//#Preview {
//    PasswordReusableView()
//}

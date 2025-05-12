//
//  PhoneReusableView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/05/2025.
//
import SwiftUI
struct PhoneReusableView:View {
    var errorText:String = ""
    var body : some View {
        VStack(alignment: .leading,spacing:4) {
            Text("Phone")
                .frame(height: 26)
                .font(.system(size: 16,weight: .bold))
                .foregroundColor(.text)
                .frame(height: 26)
            PhoneTextField()
            if errorText != ""{
                Text(errorText)
                    .font(.system(size: 12,weight: .light))
                    .foregroundColor(.red)
            }
        }
    }
    
}
//#Preview {
//    PhoneReusableView()
//}

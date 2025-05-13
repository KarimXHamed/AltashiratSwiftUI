//
//  SignUpScene.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 12/05/2025.
//

import SwiftUI

struct SignUpScene: View {
    @Environment(\.dismiss) var dismiss
    @State private var firstName:String = ""
    @State private var lastName:String = ""
    @State private var email:String = ""
    
    var body: some View {
        ZStack {
            Icons.rectangle.imageOriginal
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(spacing: 0) {
                
                HStack(spacing:0)
                {
                    Spacer()
                    Button {
                        print("go to skip")
                    } label: {
                        Text("Skip")
                            .frame(height:26)
                            .font(Fonts.extraBold.getFont(size: 16))
                            .foregroundColor(.text)
                    }
                }
                .padding(.top,69)
                .padding(.trailing,16)
                HStack(spacing:0) {
                    Spacer()
                    Icons.plane.imageOriginal
                        .frame(width: 53.6,height: 48)
                        .padding(.trailing,50)
                }
                .padding(.top,41)
                .padding(.bottom,5)
                
                VStack(spacing:0) {
                    
                    HStack(spacing:0) {
                        Button {
                            dismiss()
                        }label: {
                            Text("Login")
                                .frame(height: 26)
                                .font(Fonts.extraBold.getFont(size: 16))
                                .foregroundColor(.notSelectedButton)
                                .padding(.leading,16)
                        }
                        Spacer()
                        VStack(alignment: .center, spacing: 5) {
                            Color(.third)
                                .frame(width:100,height: 4)
                            
                            Text("Register")
                                .frame(height: 30)
                                .font(Fonts.extraBold.getFont(size: 18))
                                .foregroundColor(.text)
                        }
                        .padding(.trailing,20)
                        
                    }
                    .padding(.bottom,17)
                    HStack(spacing:8) {
                        TextFieldReusableView(leftImage: "profileIcon", placeHolder: "Enter first name", title: "First name", text: $firstName)
                            .padding(.leading,8)
                        Spacer()
                        TextFieldReusableView(leftImage: "profileIcon", placeHolder: "Enter last name", title: "Last name", text: $lastName)
                            .padding(.trailing,8)
                        
                    }
                    .padding(.bottom,20)
                    
                    TextFieldReusableView(leftImage: "mailIcon", placeHolder: "Enter your mail", title: "Email", text: $email)
                        .padding(.horizontal,8)
                        .padding(.bottom,14)
                    PhoneReusableView()
                        .padding(.horizontal,8)
                        .padding(.bottom,17)
                    PasswordReusableView()
                        .padding(.horizontal,8)
                        .padding(.bottom,56)
                }
                .background(Color.white)
                .cornerRadius(18)        //will be deprecated
                .padding(.horizontal,8)
                
                Spacer()
            }
            VStack{
                Icons.loginLogo.imageOriginal
                    .frame(width: 80, height: 80)
                    .padding(.top,128)
                    .padding(.bottom,414)
                GradientButton(title: "Sign up") {
                    print("firstname:\(firstName) \n lastname:\(lastName) \n email:\(email)")
                }
                    .padding(.bottom,16)
                HStack(spacing: 0) {
                    Text("Having account already?")
                        .font(Fonts.extraBold.getFont(size: 16))
                        .foregroundColor(.text)
                    Button {
                        dismiss()
                    } label: {
                        Text("Login")
                            .font(Fonts.extraBold.getFont(size: 16))
                            .foregroundColor(.second)
                    }
                }
                .frame(height: 26)
                Spacer()
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

//#Preview {
//    SignUpScene()
//}

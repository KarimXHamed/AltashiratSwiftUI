//
//  SignUpScene.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 12/05/2025.
//

import SwiftUI

struct SignUpScene: View {
    var body: some View {
        ZStack {
            Image("rectangle")
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
                            .font(.system(size: 16,weight:.heavy))
                            .foregroundColor(.text)
                    }
                }
                .padding(.top,69)
                .padding(.trailing,16)
                HStack(spacing:0) {
                    Spacer()
                    Image("plane")
                        .frame(width: 53.6,height: 48)
                        .padding(.trailing,50)
                }
                .padding(.top,41)
                .padding(.bottom,5)
                VStack(spacing:0) {
                    HStack(spacing:0) {
                        Button {
                            print("login clicked")
                        }label: {
                            Text("Login")
                                .frame(height: 26)
                                .font(.system(size: 16,weight: .heavy))
                                .foregroundColor(.notSelectedButton)
                                .padding(.leading,16)
                        }
                        Spacer()
                        VStack(alignment: .center, spacing: 5){
                            Color(.third)
                                .frame(width:100,height: 4)

                            Text("Register")
                                .frame(height: 30)
                                .font(.system(size: 18,weight: .heavy))
                                .foregroundColor(.text)
                        }
                        .padding(.trailing,20)

                    }
                    .padding(.bottom,17)
                    HStack(spacing:0) {
                        TextFieldReusableView(leftImage: "profileIcon", placeHolder: "Enter first name", title: "First name")
                            .padding(.leading,8)
                        Spacer()
                        TextFieldReusableView(leftImage: "profileIcon", placeHolder: "Enter last name", title: "Last name")
                            .padding(.trailing,8)

                    }
                    .padding(.bottom,20)
                    TextFieldReusableView(leftImage: "mailIcon", placeHolder: "Enter your mail", title: "Email")
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
                    .cornerRadius(18)
                    .padding(.horizontal,8)

                Spacer()
            }
            VStack{
                Image("loginLogo")
                    .frame(width: 80, height: 80)
                    .padding(.top,128)
                    .padding(.bottom,414)
                GradientButton(title: "Sign up")
                    .padding(.bottom,16)
                HStack(spacing: 0) {
                    Text("Having account already?")
                        .font(.system(size: 16,weight: .heavy))
                        .foregroundColor(.text)
                    Button {
                        print("go to login")
                    } label: {
                        Text("Login")
                            .font(.system(size: 16,weight: .heavy))
                            .foregroundColor(.second)
                    }
                }
                .frame(height: 26)
                Spacer()
            }

        }
    }
}

#Preview {
    SignUpScene()
}

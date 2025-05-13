//
//  LoginScene.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 12/05/2025.
//

import SwiftUI

struct LoginScene: View {
    
    var body: some View {
        ZStack {
            Image("rectangle")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            VStack(spacing:0){
                HStack {
                    Spacer()
                    Button {
                       print("skip clicked")
                    }label: {
                        Text("Skip")
                            .foregroundColor(.text)
                            .font(.system(size: 16,weight: .heavy))
                    }
         
                }
                .padding(.top,69)
                .padding(.bottom,41)
                .padding(.trailing,16)
                HStack {
                    Image("plane")
                        .scaleEffect(x:-1,y:1)
                        .frame(width: 53.6,height: 48)
                        .padding(.leading,48.4)
                        .scaledToFit()
                    Spacer()
                }
                .padding(.bottom,5)
                    VStack {
                        HStack {
                            VStack(spacing: 4){
                                Color(.third)
                                    .frame(width: 100, height: 4)
                                Text("Login")
                                    .frame(height: 30)
                                    .foregroundColor(.text)
                                    .font(.system(size: 18 ,weight: .heavy))
                            }
                            .padding(.leading, 20)

                            Spacer()
                            NavigationLink(destination: SignUpScene()) {
                                Text("Register")
                                    .frame(height: 26)
                                    .foregroundStyle(.notSelectedButton)
                                    .font(.system(size: 16, weight: .heavy))
                                    .padding(.trailing, 25)
                            }
                            
                        }
                        .padding(.bottom,29)
                        VStack(spacing:17){
                            PhoneReusableView()
                                .padding(.horizontal,8)
                            PasswordReusableView()
                                .padding(.horizontal,8)

                            HStack {
                                Spacer()

                                Button {
                                    print("go to forget password")
                                } label: {
                                    Text("Forget Password")
                                        .foregroundColor(.text)
                                        .font(.system(size: 14 ,weight: .bold))
                                        .padding(.trailing,21)
                                }
                            }
                            .padding(.bottom,58)
                        }
                    }
                .background(Color.white)
                .cornerRadius(18)
                .padding(.horizontal,8)
                
                HStack(spacing:0) {
                    Text("Don't have account?")
                        .foregroundColor(.text)
                        .font(.system(size: 16,weight: .heavy))
                   
                        NavigationLink(destination: SignUpScene()) {
                            Text("Create account")
                                .foregroundColor(.second)
                                .font(.system(size: 16,weight: .heavy))
                        
                    }
                }
                .padding(.top,38)
                Spacer()
                
                }
          
            VStack{
                Image("loginLogo")
                    .frame(width: 80, height: 80)
                    .padding(.top,128)
                    .padding(.bottom,279)
                GradientButton(title: "Login") {
                    print("login clicked")
                }
                Spacer()
            }
        }
    }
}


//#Preview {
//    LoginScene()
//}

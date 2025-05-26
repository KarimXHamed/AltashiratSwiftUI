//
//  LoginScene.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 12/05/2025.
//

import SwiftUI
import Combine

struct LoginScene<ViewModel:LoginViewModelProtocol>: View {
    
    @StateObject var viewModel:ViewModel
    
    var body: some View {
        
        ZStack {
            
            Icons.rectangle.imageOriginal
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing:0){
                HStack {
                    Spacer()
                    Button {
                        viewModel.onAction(action: LoginUIAction.onSkipClicked)
                    }label: {
                        Text("Skip")
                            .foregroundColor(.text)
                            .font(Fonts.extraBold.getFont(size: 16))
                    }
                    
                }
                .padding(.top,69)
                .padding(.bottom,41)
                .padding(.trailing,16)
                
                HStack {
                    Icons.plane.imageOriginal
                        .scaleEffect(x:-1,y:1)
                        .frame(width: 53.6,height: 48)
                        .padding(.leading,48.4)
                        .scaledToFit()
                    Spacer()
                }
                .padding(.bottom,5)
                
                loginForm
                
                GradientButton(title: "Login") {

                    viewModel.onAction(action: LoginUIAction.onLoginClicked)

                }
                .padding(.top,-26)
                
                HStack(spacing:2) {
                    Text("Don't have account")
                        .foregroundColor(.text)
                        .font(Fonts.extraBold.getFont(size: 16))
                    Text("?")
                        .foregroundColor(.text)
                        .font(Fonts.extraBold.getFont(size: 16))
                    
                    Button {
                        viewModel.onAction(action: LoginUIAction.onRegisterClicked)
                    } label: {
                        Text("Create account")
                            .foregroundColor(.second)
                            .font(Fonts.extraBold.getFont(size: 16))
                    }

                }
                .padding(.top,38)
                Spacer()
                
            }
            
            VStack {
                Icons.loginLogo.imageOriginal
                    .frame(width: 80, height: 80)
                    .padding(.top,128)
                    .padding(.bottom,279)

                Spacer()
            }
            
            if viewModel.state.isLoading {
                ProgressView()
            }
            
        }
        .onAppear{
            viewModel.onAction(action: .onAppear)
        }
        
    }
    
    var loginForm : some View {
       
        VStack {
            HStack {
                VStack(spacing: 4){
                    Color(.third)
                        .frame(width: 100, height: 4)
                    Text("Login")
                        .frame(height: 30)
                        .foregroundColor(.text)
                        .font(Fonts.extraBold.getFont(size: 18))
                }
                .padding(.leading, 20)
                
                Spacer()
                Button {
                    viewModel.onAction(action: LoginUIAction.onRegisterClicked)
                } label: {
                    Text("Register")
                        .frame(height: 26)
                        .foregroundStyle(.notSelectedButton)
                        .font(Fonts.extraBold.getFont(size: 16))
                        .padding(.trailing, 25)
                }
                
                
            }
            .padding(.bottom,29)
            
            VStack(spacing:17) {
                
                PhoneReusableView(phoneNumber: $viewModel.state.phoneNumber,
                                  selectedCountry: $viewModel.state.selectedCountry,
                                  countries: $viewModel.state.countries,
                                  errorText: $viewModel.state.phoneNumberError)
                    .padding(.horizontal,8)

                
                PasswordReusableView(text: $viewModel.state.password,
                                     errorText: $viewModel.state.passwordError)
                    .padding(.horizontal,8)

                
                
                HStack {
                    Spacer()
                    
                    Button {
                        viewModel.onAction(action: LoginUIAction.onForgetPasswordClicked)
                    } label: {
                        Text("Forget Password")
                            .foregroundColor(.text)
                            .font(Fonts.bold.getFont(size: 14))
                            .padding(.trailing,21)
                    }
                }
                .padding(.bottom,58)
                
            }
            
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .padding(.horizontal,10)
    }
}


//#Preview {
//    LoginScene()
//}

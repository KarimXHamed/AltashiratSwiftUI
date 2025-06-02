//
//  SignUpScene.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 12/05/2025.
//

import SwiftUI

struct SignUpScene: View {

    
    @State private var firstName:String = ""
    @State private var lastName:String = ""
    @State private var email:String = ""
    @State private var phoneNumber:String = ""
    @State private var selectedCountry:CountryPickerModel = CountryPickerModel(id: 1, countryCode: "", flag: "")
    @State private var countries:[CountryPickerModel] = []
    @State private var password:String = ""
    @State private var isLoading:Bool = false
    @State private var errorText:String = ""
    private var viewModel:SignUpViewModelProtocol
    init(viewModel: SignUpViewModel) {
        self.viewModel = viewModel
    }
    
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
                            viewModel.goToLogin()
                        }label: {
                            Text("Login")
                                .frame(height: 26)
                                .font(Fonts.extraBold.getFont(size: 16))
                                .foregroundColor(.notSelectedButton)
                                .padding(.leading,25)
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
                        TextFieldReusableView(leftImage: "profileIcon", placeHolder: "Enter first name", title: "First name", errorText: $errorText, text: $firstName)
                            .padding(.leading,8)
                        TextFieldReusableView(leftImage: "profileIcon", placeHolder: "Enter last name", title: "Last name", errorText: $errorText, text: $lastName)
                            .padding(.trailing,8)
                        
                    }
                    .padding(.bottom,20)
                    
                    TextFieldReusableView(leftImage: "mailIcon", placeHolder: "Enter your mail", title: "Email", errorText: $errorText, text: $email)
                        .padding(.horizontal,8)
                        .padding(.bottom,14)
                    PhoneReusableView(phoneNumber: $phoneNumber, selectedCountry: $selectedCountry, countries: $countries, errorText: $errorText)
                        .padding(.horizontal,8)
                        .padding(.bottom,17)
                    PasswordReusableView(text: $password, errorText: $errorText)
                        .padding(.horizontal,8)
                        .padding(.bottom,56)
                }
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 18))    
                .padding(.horizontal,10)
                
                Spacer()
            }
            VStack{
                Icons.loginLogo.imageOriginal
                    .frame(width: 80, height: 80)
                    .padding(.top,128)
                    .padding(.bottom,414)
                GradientButton(title: "Sign up",action: {
                    signUP()
                },
                image:Icons.loginIcon.imageOriginal)
                    .padding(.bottom,16)
                    .padding(.horizontal, 85)


                
                HStack(spacing: 2) {
                    Text("Having account already")
                        .font(Fonts.extraBold.getFont(size: 16))
                        .foregroundColor(.text)
                    Text("?")
                        .font(Fonts.extraBold.getFont(size: 16))
                        .foregroundColor(.text)
                    Button {
                        viewModel.goToLogin()
                    } label: {
                        Text("Login")
                            .font(Fonts.extraBold.getFont(size: 16))
                            .foregroundColor(.second)
                    }
                }
                .frame(height: 26)
                Spacer()
            }
            
            if isLoading {
                ProgressView()
            }
            
        }
        .onAppear {
            countries = viewModel.getCountries()
            if let firstCountry = countries.first {
                selectedCountry = firstCountry
            }
        }
    }
    
    private func signUP() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            isLoading = false
        }
        
        let model = SignUpRequestModel(
            firstName: firstName,
            lastName: lastName,
            email: email,
            countryID: selectedCountry.id,
            countryCode: selectedCountry.countryCode,
            phoneNumber: phoneNumber,
            password: password
        )
        viewModel.signUP(model:model)
    }
    
}

//#Preview {
//    SignUpScene()
//}

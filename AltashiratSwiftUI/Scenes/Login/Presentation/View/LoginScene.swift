//
//  LoginScene.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 12/05/2025.
//

import SwiftUI

struct LoginScene: View {
    @State private var phoneNumber:String = ""
    @State private var selectedCountry:CountryPickerModel = CountryPickerModel(id: 1, countrCode: "", flag: "")
    @State private var countries:[CountryPickerModel] = []
    @State private var password:String = ""
    private var signUPViewModel = SignUpViewModel()
    
/*@StateObject*/ private var viewModel:LoginViewModelProtocol
    init(viewModel: LoginViewModelProtocol) {
        self.viewModel = viewModel
    }

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
                       print("skip clicked")
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
                            NavigationLink(destination: SignUpScene(viewModel: SignUpViewModel())) {
                                Text("Register")
                                    .frame(height: 26)
                                    .foregroundStyle(.notSelectedButton)
                                    .font(Fonts.extraBold.getFont(size: 16))
                                    .padding(.trailing, 25)
                            }
                            
                        }
                        .padding(.bottom,29)
                        VStack(spacing:17){
                            PhoneReusableView(phoneNumber: $phoneNumber, selectedCountry: $selectedCountry, countries: $countries)
                                .padding(.horizontal,8)
                            PasswordReusableView(text: $password)
                                .padding(.horizontal,8)

                            HStack {
                                Spacer()

                                Button {
                                    print("go to forget password")
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
                
                HStack(spacing:2) {
                    Text("Don't have account")
                        .foregroundColor(.text)
                        .font(Fonts.extraBold.getFont(size: 16))
                    Text("?")
                        .foregroundColor(.text)
                        .font(Fonts.extraBold.getFont(size: 16))
                   
                        NavigationLink(destination: SignUpScene(viewModel: SignUpViewModel())) {
                            Text("Create account")
                                .foregroundColor(.second)
                                .font(Fonts.extraBold.getFont(size: 16))
                        
                    }
                }
                .padding(.top,38)
                Spacer()
                
                }
          
            VStack{
                Icons.loginLogo.imageOriginal
                    .frame(width: 80, height: 80)
                    .padding(.top,128)
                    .padding(.bottom,279)
                GradientButton(title: "Login") {
                    let model = LoginRequestModel(phoneNumber: phoneNumber, phoneCode: selectedCountry.countrCode, password: password)
                    viewModel.login(model: model)
                }
                Spacer()
            }
        }
        .onAppear{
            countries=viewModel.getCountries()
            if let countriesFirstElement = countries.first{
                selectedCountry = countriesFirstElement
            }
        }
    }
}


//#Preview {
//    LoginScene()
//}

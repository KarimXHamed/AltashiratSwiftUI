//
//  LoginViewModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 14/05/2025.
//
import Foundation
import Combine
import Factory
class LoginViewModel:LoginViewModelProtocol {
    
    @Published var state: LoginUIState = LoginUIState()
    @Published var event: LoginUIEvent = LoginUIEvent()
    
    @Injected(\.loginRouter) private var router:LoginRouterProtocol
    @Injected(\.getCountriesUseCase) private var countriesUseCase: GetCountriesUseCaseProtocol
   
    
    func onAction(action:LoginUIAction) {
        switch action {
            
        case .onLoginClicked:
            login()
            
        case .onForgetPasswordClicked:
            onForgetPasswordClicked()
            
        case .onRegisterClicked:
            goToSignUP()
            
        case .onSkipClicked:
            onSkipClicked()
            
        }
    }

    
    func onAppear() {
        state.countries =  getCountries()
        if let firstCountry = getCountries().first {
            state.selectedCountry = firstCountry
        }
    }
    
    
    private func getCountries() -> [CountryPickerModel] {
        let countries = countriesUseCase.execute()
        return countries.map {mapCountries(domainModel: $0)}
    }
    
   private func login() {
       state.isLoading = true
       DispatchQueue.main.asyncAfter(deadline: .now()+1) {
           self.showAlert()
       }
        let model = LoginRequestModel(phoneNumber: state.phoneNumber,
                                      phoneCode: state.selectedCountry.countryCode,
                                      password: state.password)
        print(model)
    }
    
    private func mapCountries(domainModel:Country) -> CountryPickerModel {
        return CountryPickerModel(id: domainModel.id,
                                  countryCode: domainModel.phoneCode,
                                  flag: domainModel.flag)
    }
    
   private func onForgetPasswordClicked() {
        print("forget password clicked")
    }
    
    private func onSkipClicked() {
        print("skip clicked")

    }
    
   private func goToSignUP() {
        router.goToSignUP()
    }
    
    private func onLoginSuccess() {
        state.isLoading = false
  
    }
    
    private func showAlert() {
        state.isLoading = false
        event.showAlert = true
//        state.phoneNumberError = "invalid number"
//        state.passwordError = "invalidPassword"
    }
    
}

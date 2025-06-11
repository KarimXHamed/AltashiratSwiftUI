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

    
    @Injected(\.loginUseCase) private var loginUseCase: LoginUseCaseProtocol
    @Injected(\.getCountriesUseCase) private var countriesUseCase: GetCountriesUseCaseProtocol
    
    private var router:LoginRouterProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(router: LoginRouterProtocol) {
        self.router = router
    }
   
    
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
            
        case .onAppear:
            onAppear()
            
        }
    }

    
    func onAppear() {
        state.countries =  getCountries()

    }
    
    
    private func getCountries() -> [CountryPickerModel] {
        let countries = countriesUseCase.execute()
        return countries.map {mapCountries(domainModel: $0)}
    }
    
   private func login() {
       guard let selectedCountryCode = state.selectedCountry.countryCode else {return}
        let model = LoginRequestModel(phoneNumber: state.phoneNumber,
                                      phoneCode: selectedCountryCode,
                                      password: state.password)
       print(model)

       let request = LoginRequest(model: model)
       loginUseCase.invoke(request)
           .subscribe(on: DispatchQueue.global(qos: .background))
           .receive(on: DispatchQueue.main)
           .sink(receiveValue: { [weak self] resource in
               guard let self = self else { return }
               switch resource {
               case .success(let user):
                   print(user)
                   onLoginSuccess()
               case .loading(let isLoading):
                   print(isLoading)
                   state.isLoading = isLoading
                   
               case .failure(let error):
                   print(error)

                   showAlert()
               }
           })
           .store(in: &cancellables)
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
        router.skipClicked()
    }
    
   private func goToSignUP() {
        router.goToSignUP()
    }
    
    private func onLoginSuccess() {
        router.goToHome()
    }
    
    private func showAlert() {
        router.showAlert()
        //        state.isLoading = false
//        state.phoneNumberError = "invalid number"
//        state.passwordError = "invalidPassword"
    }
    
}

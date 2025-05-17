//
//  LoginViewModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 14/05/2025.
//
import Combine
import Factory
class LoginViewModel:LoginViewModelProtocol {
    @Injected(\.loginRouter) private var router:LoginRouterProtocol
    @Injected(\.getCountriesUseCase) private var countriesUseCase: GetCountriesUseCaseProtocol
   
    
    func getCountries() -> [CountryPickerModel] {
        let countries = countriesUseCase.execute()
        return countries.map {mapCountries(domainModel: $0)}
    }
    
    func login(model: LoginRequestModel) {
        print(model)
    }
    
    private func mapCountries(domainModel:Country) -> CountryPickerModel {
        return CountryPickerModel(id: domainModel.id,
                                  countrCode: domainModel.phoneCode,
                                  flag: domainModel.flag)
    }
    
    func goToSignUP() {
        router.goToSignUP()
    }
    
}

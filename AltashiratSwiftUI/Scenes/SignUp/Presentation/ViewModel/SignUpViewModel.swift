//
//  SignUpViewModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 14/05/2025.
//
import Combine
import Factory
class SignUpViewModel:SignUpViewModelProtocol {
    @Injected(\.signUPRouter) private var router:SignUPRouterProtocol
    @Injected(\.getCountriesUseCase) private var countriesUseCase: GetCountriesUseCaseProtocol

    
    func signUP(model: SignUpRequestModel) {
        print(model)
    }
    
    func getCountries() -> [CountryPickerModel] {
        let countries = countriesUseCase.execute()
        return countries.map {mapCountries(domainModel: $0)}
    }
    
    func goToLogin() {
        router.goToLogin()
    }

    
    private func mapCountries(domainModel:Country) -> CountryPickerModel {
        return CountryPickerModel(id: domainModel.id,
                                  countryCode: domainModel.phoneCode,
                                  flag: domainModel.flag)
    }
    
}

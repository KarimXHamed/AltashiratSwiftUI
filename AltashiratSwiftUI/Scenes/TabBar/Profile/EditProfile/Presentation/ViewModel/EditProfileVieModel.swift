//
//  EditProfileVieModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 03/06/2025.
//
import Combine
import Factory

class EditProfileVieModel: EditProfileViewModelProtocol {
    @Published var state: EditProfileUiState = EditProfileUiState()
    @Injected(\.getCountriesUseCase) private var countriesUseCase: GetCountriesUseCaseProtocol
    
    private var router:EditProfileRouterProtocol
    
    init( router: EditProfileRouterProtocol) {
        self.router = router
    }
    
    func onAction(_ action: EditProfileUiAction) {
        switch action {
        case .onMoreClicked:
            print("more clicked")
        case .onBackClicked:
            backClicked()
        case .onSaveClicked:
            saveClicked()
        case .onAppear:
            onAppear()
        }
    }
    
    private func onAppear() {
        let countries = countriesUseCase.execute()
        mapCountries(countries: countries)
        mapPhoneCountries(countries: countries)
        
    }
    
    private func mapPhoneCountries(countries:[Country]) {
        let mappedCountries = countries.map { mapPhoneCountry(domainModel: $0 ) }
        state.phoneCountries = mappedCountries
    }
    
    
    private func mapCountries(countries:[Country]) {
        let mappedCountries = countries.map { mapCountry(domainModel: $0 ) }
        state.countries = mappedCountries
    }
    
    private func backClicked() {
        router.goBack()
    }
    
    private func saveClicked() {
        print(state)
    }
    
    private func mapPhoneCountry(domainModel:Country) -> CountryPickerModel {
        return CountryPickerModel(id: domainModel.id,
                                  countryCode: domainModel.phoneCode,
                                  flag: domainModel.flag)
    }
    private func mapCountry(domainModel:Country) -> CountryIdPickerModel {
        return CountryIdPickerModel(id: domainModel.id,
                                    flag: domainModel.flag,
                                    name: domainModel.name)
    }
}

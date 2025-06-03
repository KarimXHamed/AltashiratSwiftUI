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
        let mappedCountries = countries.map { mapCountries(domainModel: $0 ) }
        state.countries = mappedCountries
        
    }
    
    private func backClicked() {
        router.goBack()
    }
    
    private func saveClicked() {
        print(state)
    }
    
    private func mapCountries(domainModel:Country) -> CountryPickerModel {
        return CountryPickerModel(id: domainModel.id,
                                  countryCode: domainModel.phoneCode,
                                  flag: domainModel.flag)
    }
}

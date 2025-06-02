//
//  LanguageViewModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 01/06/2025.
//
import Combine
class LanguageViewModel: LanguageViewModelProtocol {
   
    private var router: LanguageRouterProtocol
    @Published var state: LanguageUIState = LanguageUIState()
    
    init(router: LanguageRouterProtocol) {
        self.router = router
    }
    
    
    func onAction(action: LanguageUIAction) {
        switch action {
        case .onSaveClicked:
            saveClicked()
        case .onBackClicked:
            backClicked()
        }
    }
    
    func saveClicked() {
        state.isShowingSnackBar = true
        
    }
    
    func backClicked() {
        router.goBack()
    }
}

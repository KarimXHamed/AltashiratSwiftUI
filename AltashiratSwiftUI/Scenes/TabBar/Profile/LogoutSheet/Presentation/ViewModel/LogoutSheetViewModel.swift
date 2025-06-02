//
//  LogoutSheetViewModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 02/06/2025.
//
class LogoutSheetViewModel : LogoutSheetViewModelProtocol {
    var router: LogoutSheetRouterProtocol
    
    init(router: LogoutSheetRouterProtocol) {
        self.router = router
    }
    
    
    func onAction(_ action:LogoutSheetUIAction) {
        
        switch action {
        case .logoutClicked:
            
            logoutClicked()
        }
        
    }
    
    private func logoutClicked() {
        router.goToHome()
    }
 
}

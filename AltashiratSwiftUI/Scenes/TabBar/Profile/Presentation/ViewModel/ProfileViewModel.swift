//
//  ProfileViewModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 28/05/2025.
//
import Combine

class ProfileViewModel: ProfileViewModelProtocol {
    
    private var router: ProfileRouterProtocol
    
     var state: ProfileUiState = ProfileUiState()
    
    init(router: ProfileRouterProtocol) {
        self.router = router
    }
    
    func onAction(action: ProfileUIAction) {
        
        switch action {
        case .onEditProfileClicked:
            router.goToEditProfile()
        case .onLogoutClicked:
            router.logout()
        case .onListClicked(let icon):
            onListClicked(id: icon.id)
        }
        
    }
    
    func onListClicked (id:Int) {
        switch id {
        case 0:
            router.goToLogin()
            
        case 1:
            router.gotoForgetPassword()
            
        case 2:
            router.goToAboutUS()
            
        case 3:
            router.goToContactUS()
            
        case 4:
            router.goToTermsAndCondition()
            
        case 5:
            router.goToPolicy()
            
        case 6:
            router.goToLanguage()
            
        default:
            break
        }
    }
    
}

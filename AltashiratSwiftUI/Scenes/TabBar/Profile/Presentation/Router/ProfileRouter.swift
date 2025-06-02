//
//  ProfileRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 28/05/2025.
//
import SwiftUI
import Factory
class ProfileRouter: BaseRouter, ProfileRouterProtocol {
   
    func goToLogin() {
        
        let loginView = Container.loginServiceDI(navigationRouter: navigationRouter)
        navigationRouter.popToRoot()
        navigationRouter.push(loginView)
    }
    
    func gotoForgetPassword() {
        
        navigationRouter.push(Text("gotoForgetPassword")
            .eraseToAnyNavigationContainer())
    }
    
    func goToAboutUS() {
        
        navigationRouter.push(Text("goToAboutUS")
            .eraseToAnyNavigationContainer())
    }
    
    func goToContactUS() {
        
        navigationRouter.push(Text("goToContactUS")
            .eraseToAnyNavigationContainer())
    }
    
    func goToTermsAndCondition() {
        
        navigationRouter.push(Text("goToTermsAndCondition")
            .eraseToAnyNavigationContainer())
    }
    
    func goToPolicy() {
        
        navigationRouter.push(Text("goToPolicy")
            .eraseToAnyNavigationContainer())
    }
    
    func goToLanguage() {
        
        navigationRouter.push( Container.LanguageServiceDI(navigationRouter: navigationRouter) )
        
    }
    
    func goToEditProfile() {
        navigationRouter.push(Text("goToEditProfile")
            .eraseToAnyNavigationContainer())
    }
    
    func logout() {
        let logoutSheetView = Container.LogoutSheetServiceDI(navigationRouter: navigationRouter)
        navigationRouter.defaultSheetDetents = [.height(353)]
        navigationRouter.presentSheet(logoutSheetView)
    }
    
    
}

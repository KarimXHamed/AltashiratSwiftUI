//
//  LogoutSheetRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 02/06/2025.
//
import Factory

class LogoutSheetRouter: BaseRouter, LogoutSheetRouterProtocol {
   
    func goToHome() {
        let loginView = Container.loginServiceDI(navigationRouter: navigationRouter)
        navigationRouter.dismissSheet()
        navigationRouter.push(loginView)
    }
    
    
}

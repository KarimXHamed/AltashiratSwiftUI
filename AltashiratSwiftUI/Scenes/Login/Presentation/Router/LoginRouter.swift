//
//  LoginRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
import Factory

class LoginRouter:BaseRouter,LoginRouterProtocol {
    
    func goToSignUP() {
        let signUpView = Container.signUPServiceDI(navigationRouter: navigationRouter).eraseToAnyNavigationContainer()
        navigationRouter.push(signUpView)
    }
    
    func goToHome() {
        return
    }
    
    func showAlert() {
        let actions : [AlertAction] = [
            .init(title: "ok", action: {print("ok clicked")}, actionType: .cancel),
            .init(title: "cancel", action: {print("cancel clicked")}, actionType: .destructive)
        ]
        
        let alertModel = AlertModel(action: actions,
                                    title: "hij",
                                    message: "klm",
                                    shouldShowAlert: true)
        
        navigationRouter.showAlert(alertModel)
    }
    
    
    
    
}


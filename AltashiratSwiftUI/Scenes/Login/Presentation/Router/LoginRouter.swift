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
}

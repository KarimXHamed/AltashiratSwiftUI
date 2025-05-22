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
        print("go sign up router")
        let signUpView = Container.signUPServiceDI().eraseToAnyNavigationContainer()
        navigationRouter.push(signUpView)
    }
    
    func goToHome() {
        return
    }
}

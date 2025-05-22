//
//  SignUPRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
import Factory
class SignUPRouter:BaseRouter,SignUPRouterProtocol {

    func goToLogin() {
        navigationRouter.pop()
    }
    
    func goToHome() {
        return
    }
    
    
}

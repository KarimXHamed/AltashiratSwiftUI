//
//  SignUPRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
import Factory
class SignUPRouter:SignUPRouterProtocol {
    @Injected(\.routerManager) private var routerManager:RouterManager
    func goToLogin() {
        routerManager.goBack()
    }
    
    func goToHome() {
        return
    }
    
    
}

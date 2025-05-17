//
//  LoginRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
import Factory
class LoginRouter:LoginRouterProtocol {
    
    @Injected(\.routerManager) private var routerManager:RouterManager

    func goToSignUP() {
        routerManager.push(screen: .signUP)
    }
    
    func goToHome() {
        return
    }
}

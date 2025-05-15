//
//  LoginRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
import Factory
class LoginRouter:LoginRouterProtocol {
    private var routerManager: RouterManager
    init (routerManager: RouterManager) {
        self.routerManager = routerManager
    }

    func goToSignUP() {
        routerManager.push(screen: .signUP)
    }
    
    func goToHome() {
        return
    }
}

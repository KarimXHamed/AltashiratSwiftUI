//
//  AppRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
import Factory

class AppRouter {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false

    func start(navigationRouter:NavigationRouter) -> AnyNavigationContainer {
        
        if isLoggedIn {
            
            return Container.tabBarServiceDI(navigationRouter: navigationRouter)
            
        } else{
            
            let loginContainer = Container.loginServiceDI(navigationRouter: navigationRouter)
            
            return loginContainer
        }
        
    }
    
    
    
}


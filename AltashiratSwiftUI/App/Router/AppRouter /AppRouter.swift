//
//  AppRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
import Factory

class AppRouter {
    
    func start(navigationRouter:NavigationRouter) -> AnyNavigationContainer {
        let loginContainer = Container.loginServiceDI(navigationRouter: navigationRouter)
        
        return loginContainer.eraseToAnyNavigationContainer()

        }
    }


//
//  TabBarDI.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 27/05/2025.
//
import Factory
import SwiftUI
extension Container {
    static func tabBarServiceDI(navigationRouter:NavigationRouter) -> AnyNavigationContainer {
        let router = TabBarRouter(navigationRouter: navigationRouter)
        let viewModel = TabBarViewModel(router: router)
        let view = TabBarView<TabBarViewModel>(viewModel: viewModel)
        return view.eraseToAnyNavigationContainer()
        
    }
    
    static func getProfile() -> AnyNavigationContainer {
        
        let profileRouter =  NavigationRouter()
        let profileView = Container.profileServiceDI(navigationRouter: profileRouter)
        return profileView
        
    }

    
}

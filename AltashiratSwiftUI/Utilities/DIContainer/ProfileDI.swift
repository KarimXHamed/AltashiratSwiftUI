//
//  ProfileDI.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 28/05/2025.
//
import Factory
import SwiftUI
extension Container {
    static func profileServiceDI(navigationRouter: NavigationRouter) -> AnyNavigationContainer {
        let router = ProfileRouter(navigationRouter: navigationRouter)
        let viewModel = ProfileViewModel(router:router)
        let view = ProfileView<ProfileViewModel>(viewModel:viewModel)
        return view.eraseToAnyNavigationContainer()
    }
    
    
}

//
//  SignUPDI.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 14/05/2025.
//
import Factory
import SwiftUI
extension Container {
    static func signUPServiceDI (navigationRouter:NavigationRouter) -> SignUpScene {
        let router = SignUPRouter(navigationRouter: navigationRouter)
        let viewModel = SignUpViewModel(router: router)
        let view = SignUpScene(viewModel: viewModel)
        return view
    }
    

    
}

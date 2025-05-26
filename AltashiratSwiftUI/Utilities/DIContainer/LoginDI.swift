//
//  LoginDI.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import Factory
import SwiftUI
extension Container {
    static func loginServiceDI (navigationRouter:NavigationRouter) -> some View {
        let router = LoginRouter(navigationRouter: navigationRouter)
        let viewModel = LoginViewModel(router:router)
        let view = LoginScene<LoginViewModel>(viewModel: viewModel)
        return view
    }
    
    var loginUseCase: Factory<LoginUseCaseProtocol> {
        self {LoginUseCase()}
    }
    
    var loginRepository:Factory<LoginRepositoryProtocol> {
        self {LoginRepository()}
    }
    
}


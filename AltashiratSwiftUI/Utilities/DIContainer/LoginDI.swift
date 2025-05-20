//
//  LoginDI.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import Factory
import SwiftUI
extension Container {
    static func loginServiceDI () -> some View {
        let viewModel = LoginViewModel()
        let view = LoginScene<LoginViewModel>(viewModel: viewModel)
        return view
    }
    
    var loginRouter: Factory<LoginRouterProtocol> {
        self {LoginRouter()}
    }
    
}


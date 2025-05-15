//
//  LoginDI.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import Factory
import SwiftUI
extension Container {
    static func loginServiceDI () -> LoginScene {
        let routerManager = shared.routerManager.resolve()
        let router  = LoginRouter(routerManager: routerManager)
        let viewModel = LoginViewModel(router: router)
        let view = LoginScene(viewModel: viewModel)
        return view
    }
}

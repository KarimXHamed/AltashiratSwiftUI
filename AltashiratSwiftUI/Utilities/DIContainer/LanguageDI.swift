//
//  Language.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 01/06/2025.
//
import Factory

extension Container {
    static func LanguageServiceDI(navigationRouter:NavigationRouter) -> AnyNavigationContainer {
        let router = LanguageRouter(navigationRouter: navigationRouter)
        let viewModel = LanguageViewModel(router: router)
        let view  = LanguageView<LanguageViewModel>(viewModel: viewModel)
        return view.eraseToAnyNavigationContainer()
    }
}

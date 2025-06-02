//
//  LogoutSheetDI.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 02/06/2025.
//
import Factory

extension Container {
    static func LogoutSheetServiceDI(navigationRouter:NavigationRouter) -> AnyNavigationContainer {
        let router = LogoutSheetRouter(navigationRouter: navigationRouter)
        let viewModel = LogoutSheetViewModel(router: router)
        let view = LogoutSheetView(viewModel: viewModel).eraseToAnyNavigationContainer()
        return view
    }
    
}

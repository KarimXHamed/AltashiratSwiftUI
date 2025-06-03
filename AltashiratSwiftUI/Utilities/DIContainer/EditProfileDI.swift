//
//  EditProfileDI.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 03/06/2025.
//
import Factory

extension Container {
    static func EditProfileServiceDi(navigationRouter: NavigationRouter) -> AnyNavigationContainer {
        let router = EditProfileRouter(navigationRouter: navigationRouter)
        let viewModel = EditProfileVieModel(router: router)
        let view = EditProfileView<EditProfileVieModel>(viewModel: viewModel)
        return view.eraseToAnyNavigationContainer()
    }
}

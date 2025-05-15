//
//  AppRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
import Factory
class AppRouter {
    @InjectedObject(\.routerManager) private var routerManager:RouterManager

    @ViewBuilder
    func start () -> some View {
        NavigationStack(path: $routerManager.routes) {
            Container.loginServiceDI()
        }
        .navigationDestination(for: AppRoute.self) {$0}
    }
}

//
//  AppRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
import Factory
struct AppRouter:View {
    @InjectedObject(\.routerManager) private var routerManager:RouterManager
    var body : some View {
        start()
    }
    
    @ViewBuilder
    func start () -> some View {
        NavigationStack(path: $routerManager.routes) {
            Container.loginServiceDI()
                .navigationDestination(for: AppRoute.self) {$0}

        }
    }
}

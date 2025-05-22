//
//  AppRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
import Factory
class AppRouter:BaseRouter {
    
    @ViewBuilder
    func start() -> some View {
         Container.loginServiceDI(navigationRouter: navigationRouter)

        }
    }


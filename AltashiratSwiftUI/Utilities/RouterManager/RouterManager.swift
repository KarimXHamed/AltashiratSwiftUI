//
//  AppRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
import Factory
final class RouterManager:ObservableObject {
    @Published var routes = [AppRoute]()
    
    func push(screen:AppRoute) {
        routes.append(screen)
    }
    
    func reset() {
        routes = []
    }
    
    func goBack() {
        _ = routes.popLast()
    }
}

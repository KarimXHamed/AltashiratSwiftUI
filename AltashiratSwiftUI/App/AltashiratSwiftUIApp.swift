//
//  AltashiratSwiftUIApp.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 10/05/2025.
//

import SwiftUI
@main
struct AltashiratSwiftUIApp: App {
    var appRouter = AppRouter()
    var rootView: AnyNavigationContainer?
    let navigationRouter: NavigationRouter = NavigationRouter()
    init() {
        self.rootView = appRouter.start(navigationRouter: navigationRouter)
    }
    var body: some Scene {
        WindowGroup {
            
            NavigationContainerView(navigationRouter: navigationRouter) {
                rootView?.view()
                
            }
            
        }
        
    }
    
}


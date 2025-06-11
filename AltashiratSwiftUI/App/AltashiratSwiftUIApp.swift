//
//  AltashiratSwiftUIApp.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 10/05/2025.
//

import SwiftUI
import Factory
@main
struct AltashiratSwiftUIApp: App {
    var appRouter = AppRouter()
    
    var rootView: AnyNavigationContainer?
    
    let navigationRouter: NavigationRouter = NavigationRouter()
        
    @StateObject private var themeManager = ThemeManager()
    
    init() {
        self.rootView = appRouter.start(navigationRouter: navigationRouter)
    }
    
    var body: some Scene {
        WindowGroup {
            
            NavigationContainerView(navigationRouter: navigationRouter) {
                rootView?.view()

            }
            .environmentObject(themeManager)
            .preferredColorScheme(themeManager.appTheme.colorScheme)
            
        }
        
    }
    
}


//
//  ContentView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 10/05/2025.
//

import SwiftUI

struct ContentView: View {
    var navigationContinerView:NavigationContainerView?

    var body: some View {
        var appRouter:AppRouter = AppRouter(navigationRouter: navigationContinerView?.navigationRouter)
        NavigationContainerView {
        }
        .navigationRouter
    }
}
//#Preview {
//    ContentView()
//}

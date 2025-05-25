//
//  ContentView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 10/05/2025.
//

import SwiftUI

struct ContentView: View {
var appRouter = AppRouter()
    var body: some View {
        NavigationContainerView { navigationRouter in
            appRouter.start(navigationRouter: navigationRouter) 
        }
    }
}
//#Preview {
//    ContentView()
//}

//
//  NavigaionContainerView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 22/05/2025.
//
import SwiftUI

struct NavigationContainerView<Content:View>: View {
    @StateObject var navigationRouter = NavigationRouter()
    
    var root: (_ navigationRouter: NavigationRouter) -> Content
    
    var body: some View {
        NavigationStack(path: $navigationRouter.navigationPath) {
            root(navigationRouter)
                .navigationDestination(for: AnyNavigationContainer.self) { container in
                    container.view()
                }
        }
        .sheet(isPresented: $navigationRouter.hasPresentedSheet, onDismiss: {
            navigationRouter.dismissSheet()
            
        }, content: {
            if let currentSheet = navigationRouter.currentSheet {
                currentSheet.view()
            }
            
        } )
        .fullScreenCover(item: $navigationRouter.presentedFullScreen) { container in
            container.view()
        }
    }
}

extension View {
    func eraseToAnyView() -> AnyView {
        return AnyView(self)
    }
    
    func eraseToAnyNavigationContainer() -> AnyNavigationContainer {
        return .init(id: UUID(), view: { self.eraseToAnyView() } )
    }
    
}

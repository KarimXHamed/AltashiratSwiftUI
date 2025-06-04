//
//  TabBarView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 26/05/2025.
//

import SwiftUI
import Factory
struct TabBarView<ViewModel:TabBarViewModelProtocol>: View {
    @EnvironmentObject var appState:AppState
    @Namespace var namespace
    @StateObject  var viewModel: ViewModel
    
    var body: some View {
        VStack(spacing: 0) {
            
            viewModel.state.currentView.view()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            if appState.state.isLoggedIn{
                customTabBar
            }
        }
        .ignoresSafeArea()
    }
    
    var customTabBar: some View {
        
        
        ZStack {
            Rectangle()
                .fill(.white)
                .shadow(color: .tabBarShadow.opacity(0.5), radius: 2)
            
            TabsLayoutView(selectedTab: $viewModel.state.currentTab,
                           namespace: namespace,
                           onTabSelected: { tab in
                viewModel.onAction(.onTabClicked(tab: tab))
            })
        }
        .frame(height: 85)
    }
}
    



//#Preview {
//    TabBarView()
//}

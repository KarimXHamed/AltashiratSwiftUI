//
//  TabBarViewModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 27/05/2025.
//
import SwiftUI

class TabBarViewModel:TabBarViewModelProtocol {

    private var router: TabBarRouterProtocol
    
    @Published var state:TabBarUIState 
    
    private var profileView: AnyNavigationContainer
    private var requestsView: AnyNavigationContainer
    private var platformView: AnyNavigationContainer
    
    
    

    init(router: TabBarRouterProtocol) {
       
        self.router = router
        self.profileView = router.initProfile()
        self.requestsView = router.initRequests()
        self.platformView = router.initPlatform()
        
        self.state = TabBarUIState(currentTab: .profile,
                                   currentView: profileView)

    }
    
    func onAction(_ action:TabBarUIAction) {
        switch action {
        case .onTabClicked(let tab):
            onTabSelected(tab: tab)
        }
    }

    

    
    func onTabSelected(tab:TabBarIcon)  {
        switch tab {
        case .platform:
            state.currentView = platformView
            
        case .requests:
            state.currentView = requestsView
            
        case .profile:
            state.currentView = profileView
        }
    }

    
}

//
//  TabBarRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 27/05/2025.
//
import SwiftUI
import Factory

class TabBarRouter : BaseRouter , TabBarRouterProtocol  {
    
    func initProfile() -> AnyNavigationContainer  {
        
        let profileNavigationRouter = NavigationRouter()
        
      return  NavigationContainerView(navigationRouter: profileNavigationRouter){
            Container.profileServiceDI(navigationRouter: profileNavigationRouter).view()
        }
        .eraseToAnyNavigationContainer()
        
    }
    
    func initRequests() -> AnyNavigationContainer  {
        
        Text("123")
            .eraseToAnyNavigationContainer()
    }
    
    func initPlatform() -> AnyNavigationContainer {
        
        Text("456")
            .eraseToAnyNavigationContainer()
        
    }
}

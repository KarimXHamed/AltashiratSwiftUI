//
//  TabBarRouterProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 27/05/2025.
//
import SwiftUI

protocol TabBarRouterProtocol {
    
    func initProfile() -> AnyNavigationContainer
    
    func initRequests() -> AnyNavigationContainer
    
    func initPlatform() -> AnyNavigationContainer
    
}

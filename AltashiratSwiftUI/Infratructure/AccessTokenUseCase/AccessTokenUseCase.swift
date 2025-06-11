//
//  AccessTokenUseCase.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 10/06/2025.
//
import SwiftUI

class AccessTokenUseCase: AccessTokenUseCaseProtocol {
    @AppStorage("accessToken") private var accessToken: String?
    @Published private var isAuthenticated:Bool = false
    
    init() {
        self.isAuthenticated = isLoggedIn()
    }
    
    
    func save() {
        self.accessToken = "Bearer 12345"
        isAuthenticated = true
    }
    
    func retrieve() -> String? {
        return accessToken
        
    }
    
    func delete() {
        self.accessToken = nil
        isAuthenticated = false
    }
    
    func isLoggedIn() -> Bool {
        
        return accessToken != nil
    }

    
}

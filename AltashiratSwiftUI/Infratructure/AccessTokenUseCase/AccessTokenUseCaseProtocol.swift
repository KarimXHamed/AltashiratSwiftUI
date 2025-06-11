//
//  AccessTokenUseCaseProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 10/06/2025.
//
import Combine

protocol AccessTokenUseCaseProtocol: ObservableObject {
    func save()
    
    func retrieve() -> String?
    
    func delete()
    
    func isLoggedIn() -> Bool
}

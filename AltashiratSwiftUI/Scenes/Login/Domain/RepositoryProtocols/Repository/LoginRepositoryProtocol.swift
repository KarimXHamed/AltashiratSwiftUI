//
//  LoginRepositoryProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 25/05/2025.
//
import Combine
protocol LoginRepositoryProtocol {

    func login(_ body:LoginRequest) -> AnyPublisher<User,Error>
    
}

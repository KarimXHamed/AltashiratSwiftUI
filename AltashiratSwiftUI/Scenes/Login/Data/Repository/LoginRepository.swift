//
//  LoginRepository.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 25/05/2025.
//
import Combine
import Foundation

class LoginRepository: LoginRepositoryProtocol {
    
    func login(_ body:LoginRequest) -> AnyPublisher<User,Error>{
        let mockUser = User()
        
        return Just(mockUser)
            .delay(for: .seconds(1), scheduler: DispatchQueue.main) 
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
        
        
        
    }
}

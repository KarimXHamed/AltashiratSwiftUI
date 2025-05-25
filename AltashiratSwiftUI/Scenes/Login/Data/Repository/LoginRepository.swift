//
//  LoginRepository.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 25/05/2025.
//
import Combine

class LoginRepository: LoginRepositoryProtocol {
    
    func login(_ body:LoginRequest) -> AnyPublisher<User,Error>{
        let mockUser = User()
         return Just(mockUser)
             .setFailureType(to: Error.self) 
             .eraseToAnyPublisher()
    }

    
}

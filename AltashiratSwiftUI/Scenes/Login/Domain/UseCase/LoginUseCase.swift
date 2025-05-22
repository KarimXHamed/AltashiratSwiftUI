//
//  LoginUseCase.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 21/05/2025.
//
import Combine

class LoginUseCase : BaseUseCase<LoginRequest, User> , LoginUseCaseProtocol {
    
    override func invoke(_ body: LoginRequest) -> AnyPublisher<Resource<User>, Never> {
    let subject = execute {
        let mockUser = User()
        return Just(mockUser)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
        return subject
    }
}

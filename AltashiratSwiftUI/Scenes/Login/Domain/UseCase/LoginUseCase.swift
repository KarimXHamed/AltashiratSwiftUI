//
//  LoginUseCase.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 21/05/2025.
//
import Combine
import Factory

class LoginUseCase : BaseUseCase<LoginRequest, User> , LoginUseCaseProtocol {
    
    @Injected(\.loginRepository) private var repository:LoginRepositoryProtocol

    
    override func invoke(_ body: LoginRequest) -> AnyPublisher<Resource<User>, Never> {
        return execute {
             self.repository.login(body)
        }
    }
    
}

//
//  LoginUseCaseProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 21/05/2025.
//
import Combine

protocol LoginUseCaseProtocol {
    func invoke(_ body: LoginRequest) -> AnyPublisher<Resource<User>, Never>
}

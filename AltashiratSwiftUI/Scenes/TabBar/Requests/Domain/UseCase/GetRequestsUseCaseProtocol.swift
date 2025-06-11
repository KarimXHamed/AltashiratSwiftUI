//
//  GetRequestsUseCaseProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import Combine

protocol GetRequestsUseCaseProtocol {
    func invoke(_ body: RequestsRequest) -> AnyPublisher<Resource<GetRequestResponse>, Never>
}

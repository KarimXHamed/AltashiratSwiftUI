//
//  GetRequestsRepositoryProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import Combine

protocol GetRequestsRepositoryProtocol {
    
    func getRequests(_ body:RequestsRequest) -> AnyPublisher<GetRequestResponse,Error>
}

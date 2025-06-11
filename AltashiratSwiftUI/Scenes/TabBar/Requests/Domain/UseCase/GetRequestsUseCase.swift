//
//  GetRequestsUseCase.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import Factory
import Combine

class GetRequestsUseCase: BaseUseCase<RequestsRequest, GetRequestResponse>, GetRequestsUseCaseProtocol {
   
    @Injected(\.requestsRepository) private var repository: GetRequestsRepositoryProtocol
    
    override func invoke(_ body: RequestsRequest) -> AnyPublisher<Resource<GetRequestResponse>, Never> {
        return execute {
             self.repository.getRequests(body)
        }
    }
    
}

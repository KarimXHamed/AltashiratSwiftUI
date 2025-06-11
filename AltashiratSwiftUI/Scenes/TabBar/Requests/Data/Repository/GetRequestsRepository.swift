//
//  GetRequestsRepository.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import Combine
import Foundation

class GetRequestsRepository: GetRequestsRepositoryProtocol {

    
    func getRequests(_ body:RequestsRequest) -> AnyPublisher<GetRequestResponse,Error> {
        let data: GetRequestResponse = .init(requests: [
            .init(orderNumber: 1234, status: .accepted, date: "22/22/2121", noOfPersons: 4, noOfChilds: 5),
            .init(orderNumber: 1233, status: .recieved, date: "22/22/2121", noOfPersons: 4, noOfChilds: 5),
            .init(orderNumber: 1232, status: .rejected, date: "22/22/2121", noOfPersons: 4, noOfChilds: 5),
            .init(orderNumber: 1231, status: .underReview, date: "22/22/2121", noOfPersons: 4, noOfChilds: 5),
            .init(orderNumber: 1230, status: .accepted, date: "22/22/2121", noOfPersons: 4, noOfChilds: 5),
            .init(orderNumber: 1220, status: .underReview, date: "22/22/2121", noOfPersons: 4, noOfChilds: 5)
        ])
        
        return Just(data)
            .delay(for: .seconds(1), scheduler: DispatchQueue.main)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}

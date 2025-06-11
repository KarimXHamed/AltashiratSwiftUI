//
//  RequestsDI.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import Factory
import SwiftUI

extension Container {
    static func requestsServiceDI(navigationRouter: NavigationRouter) -> AnyNavigationContainer {
        let viewModel = RequestsViewModel()
        
        let view = RequestsView<RequestsViewModel>(viewModel: viewModel)
        
        return view
            .eraseToAnyNavigationContainer()
    }
    
    var requestsRepository: Factory<GetRequestsRepositoryProtocol> {
        self { GetRequestsRepository() }
    }
    
    var requestsUseCase: Factory<GetRequestsUseCaseProtocol> {
        self { GetRequestsUseCase() }
    }
}

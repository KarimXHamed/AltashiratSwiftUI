//
//  RequestsViewModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import Combine
import Factory
import Foundation

class RequestsViewModel: RequestsViewModelProtocol {
    
    @Published var state: RequestsUiState = RequestsUiState()
    @Injected(\.requestsUseCase) private var useCase: GetRequestsUseCaseProtocol
    
    private var cancellables = Set<AnyCancellable>()

    
    func onAction(_ action:RequestsUiAction) {
        switch action {
            
        case .onAppear:
            onAppear()
            
        case .onReachLastRequest:
            onReachLastRequest()
            
        }
        
        print(state.currentPage)
    }
    
    private func fetchRequests() {
        
        let body = RequestsRequest()
        
        useCase.invoke(body)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { [weak self] resource in
                
                guard let self = self else { return }
                
                switch resource {
                case .success(let data):
                    state.tourismRequests += data.requests
                    
                case .loading(let isLoading):
                    print(isLoading)
                    state.isLoading = isLoading
                    
                case .failure(_):
                    showAlert()
                }
                
            })
            .store(in: &cancellables)
        
        state.currentPage += 1
    }
    
    private func onAppear() {
        
        guard !state.isLoading else {return}
        
        !state.firstFetched ? fetchRequests() : ()
        state.firstFetched = true
        
    }
    
    private func onReachLastRequest() {
        
        if state.currentPage < state.lastPage {
            fetchRequests()
        }
        
    }
    
    private func showAlert() {
        
        //router.showAlert()
        
    }
    
    
}

//
//  RequestsViewModelProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import Combine
protocol RequestsViewModelProtocol : ObservableObject {
    
    var state: RequestsUiState {get set}
    
    func onAction(_ action: RequestsUiAction)
}

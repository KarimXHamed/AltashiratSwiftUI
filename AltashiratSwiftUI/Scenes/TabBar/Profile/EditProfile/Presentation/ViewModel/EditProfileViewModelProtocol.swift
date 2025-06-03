//
//  EditProfileViewModelProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 03/06/2025.
//
import Combine
protocol EditProfileViewModelProtocol: ObservableObject {
    var state: EditProfileUiState {get set}
    
    func onAction(_ action:EditProfileUiAction)
}

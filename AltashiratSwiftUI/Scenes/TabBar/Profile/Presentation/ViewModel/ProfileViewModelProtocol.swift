//
//  ProfileViewModelProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 28/05/2025.
//
import Combine

protocol ProfileViewModelProtocol: ObservableObject {
    var state: ProfileUiState {get set}
    func onAction(action: ProfileUIAction)

}

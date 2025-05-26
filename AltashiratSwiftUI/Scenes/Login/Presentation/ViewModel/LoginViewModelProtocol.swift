//
//  LoginViewModelProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 14/05/2025.
//
import Combine
protocol LoginViewModelProtocol:ObservableObject {
    
    var state:LoginUIState {get set}
    
    func onAction(action:LoginUIAction)
    
}


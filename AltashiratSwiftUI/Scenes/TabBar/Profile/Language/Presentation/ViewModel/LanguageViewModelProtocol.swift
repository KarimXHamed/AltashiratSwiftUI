//
//  LanguageViewModelProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 01/06/2025.
//
import Combine

protocol LanguageViewModelProtocol: ObservableObject {
   
    var state:LanguageUIState {get set}
    
    func onAction(action: LanguageUIAction)
}

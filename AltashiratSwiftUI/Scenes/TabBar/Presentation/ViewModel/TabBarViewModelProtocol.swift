//
//  TabBarViewModelProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 27/05/2025.
//
import Combine

protocol TabBarViewModelProtocol: ObservableObject {
    
    var state: TabBarUIState {get set}
    
    func onAction(_ action:TabBarUIAction)

    
}

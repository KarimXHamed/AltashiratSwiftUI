//
//  ProfileViewModelProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 28/05/2025.
//
import Combine

protocol ProfileViewModelProtocol: ObservableObject {
    func onAction(action: ProfileUIAction)

}

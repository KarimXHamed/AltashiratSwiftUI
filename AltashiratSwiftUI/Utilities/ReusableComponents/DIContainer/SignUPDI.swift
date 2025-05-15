//
//  SignUPDI.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 14/05/2025.
//
import Factory
import SwiftUI
extension Container {
    static func signUPServiceDI () -> SignUpScene {
        //let router  = SignUpRouter()
        let viewModel = SignUpViewModel()
        let view = SignUpScene(viewModel: viewModel)
        return view
    }
}

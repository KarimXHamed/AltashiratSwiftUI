//
//  LoginRequest.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 21/05/2025.
//
struct LoginRequest: Endpoint {
    var model:LoginRequestModel
    
    init(model: LoginRequestModel) {
        self.model = model
    }
}

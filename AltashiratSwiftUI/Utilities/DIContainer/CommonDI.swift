//
//  CommonDI.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import Factory
extension Container{
    var routerManager:Factory<RouterManager> {
        self { RouterManager() }
            .scope(.shared)
    }
    
    var getCountriesUseCase: Factory<GetCountriesUseCaseProtocol> {
        self {GetCountriesUseCase()}
    }
    
}

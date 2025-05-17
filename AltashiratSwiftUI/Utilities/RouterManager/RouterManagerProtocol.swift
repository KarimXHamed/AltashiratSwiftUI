//
//  RouterManagerProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
protocol RouterManagerProtocol:ObservableObject {
    var routes:[AppRoute] {get set}
    
    func push(screen:AppRoute)
    
    func reset()
    
    func goBack()

}

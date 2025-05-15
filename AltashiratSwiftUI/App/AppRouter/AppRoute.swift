//
//  AppRoute.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 15/05/2025.
//
import SwiftUI
import Factory
enum AppRoute:Hashable {
    case login
    case signUP
}
extension AppRoute:View	 {
    var body : some View {
        switch self {
        case .login:
            Container.loginServiceDI()
        case .signUP:
            Container.signUPServiceDI()
        }
    }
}

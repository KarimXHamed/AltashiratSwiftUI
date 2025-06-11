//
//  AppTheme.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 26/05/2025.
//
import SwiftUI

enum AppTheme{
 
    case system
    case light
    case dark
    
    var colorScheme: ColorScheme? {
        switch self {
        case .system:
            return nil
        case .light:
            return .light
        case .dark:
            return .dark
        }
    }

}

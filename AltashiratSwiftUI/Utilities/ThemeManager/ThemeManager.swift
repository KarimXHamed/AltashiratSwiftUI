//
//  ThemeManager.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 26/05/2025.
//
import SwiftUI
class ThemeManager: ObservableObject {
    @Published var selectedTheme:AppTheme = .system
    
    var colorScheme: ColorScheme? {
        switch selectedTheme {
        case .system:
            return nil
        case .light:
            return .light
        case .dark:
            return .dark
        }
    }
    
}

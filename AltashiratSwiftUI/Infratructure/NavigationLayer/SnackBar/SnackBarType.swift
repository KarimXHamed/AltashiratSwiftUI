//
//  SnackBarModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 01/06/2025.
//
enum SnackBarType {
    
    case successMessage
    case errorMessage(action: () -> Void)
    case infoMessage
    
}

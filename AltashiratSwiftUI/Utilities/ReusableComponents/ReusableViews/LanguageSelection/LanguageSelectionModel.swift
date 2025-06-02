//
//  LanguageSelectionModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 29/05/2025.
//
import SwiftUI

struct SingleSelectionCellModel:Identifiable {
    var id: UUID = UUID()
    var title: String
    var flag: Image
    var isSelected: Bool
    
}

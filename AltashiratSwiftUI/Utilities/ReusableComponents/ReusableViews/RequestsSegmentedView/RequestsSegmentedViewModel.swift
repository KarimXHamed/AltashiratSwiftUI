//
//  RequestsSegmentedViewModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import SwiftUI

struct RequestsSegmentedViewModel: Identifiable {
    let id: UUID = UUID()
    var icon: Icons
    var title: String
    var isSelected: Bool
    var category: RequestSegmentedViewCategories
}

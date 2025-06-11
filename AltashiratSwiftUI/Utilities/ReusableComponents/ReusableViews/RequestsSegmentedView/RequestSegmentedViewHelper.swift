//
//  RequestSegmentedViewHelper.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import Foundation
import SwiftUI

class RequestSegmentedViewHelper:ObservableObject {
    
    @Published var items: [RequestsSegmentedViewModel] = [
        .init(icon: .tourismVisaIcon, title: "Tourism visa", isSelected: true),
        .init(icon: .employmentVisaIcon, title: "Employment visa", isSelected: false),
        .init(icon: .sellVisaIcon, title: "Sell visa", isSelected: false)
    ]
    
    func selectItem(id:UUID) {
        for index in items.indices {
            items[index].isSelected = (items[index].id == id)
        }
    }
    
}

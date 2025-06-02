//
//  TabBarIconCondition.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 27/05/2025.
//
import SwiftUI
enum TabBarIconCondition {
    case selected(title: String, image:String)
    case unselected(title: String, image:String)
    
    var title : Text {
        
        switch self {
        case .selected(let title, let image):
            Text(title)
                .font(Fonts.bold.getFont(size: 12))
                .foregroundColor(.text)
            
        case .unselected(let title, let image):
            Text(title)
                .font(Fonts.bold.getFont(size: 12))
                .foregroundColor(.textFieldPH)
        }
    }
    
    var image:Image {
        switch self {
        case .selected(let title, let image):
            Image(image)
            
        case .unselected(let title, let image):
            Image(image)

        }
    }
    
}

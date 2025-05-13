//
//  Icons.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 13/05/2025.
//
import SwiftUI
enum Icons:String {
    case lockIcon
    case loginBG
    case loginIcon
    case loginLogo
    case mailIcon
    case mobileIcon
    case plane
    case profileIcon
    case rectangle
    case KSA
}
extension Icons {
    var imageOriginal:Image {
        return Image(self.rawValue)
            .renderingMode(.original)
    }
    var imageTemplate:Image {
        return Image(self.rawValue)
            .renderingMode(.template)
    }
}

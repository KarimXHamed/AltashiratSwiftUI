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
    case SA
    case UK
    case profilePlaceholder
    case editPasswordIcon
    case aboutUSIcon
    case contactUSIcon
    case termsAndConditionsIcon
    case policyIcon
    case languageIcon
    case profileMenuArrow
    case logoutProfileIcon
    case loginProfileIcon
    case backButton
    case unselectedMark
    case selectedMark
    case saveButtonIcon
    case logoutSheetImage
    case editProfilePictureIcon
    case flagIcon
    case calenderIcon
    case downArrow
    
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

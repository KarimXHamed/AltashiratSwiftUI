//
//  Fonts.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 13/05/2025.
//
import SwiftUI
enum Fonts {
    case black, bold, extraBold, light, plain
    
    func getFont(size:CGFloat) -> Font {
        let isArabic = Locale.current.language.languageCode == "ar"

        if isArabic {
            switch self {
            case .black:
                return Font.custom("BahijTheSansArabic-Black", size: size)
            case .bold:
                return Font.custom("BahijTheSansArabic-Bold", size: size)
            case .extraBold:
                return Font.custom("BahijTheSansArabic-ExtraBold", size: size)
            case .light:
                return Font.custom("BahijTheSansArabic-Light", size: size)
            case .plain:
                return Font.custom("BahijTheSansArabic-Plain", size: size)
            }
        }else{
            switch self {
            case .black:
                return Font.system(size: size,weight: .semibold)
            case .bold:
                return Font.system(size: size,weight: .bold)

            case .extraBold:
                return Font.system(size: size,weight: .heavy)

            case .light:
                return Font.system(size: size,weight: .light)

            case .plain:
                return Font.system(size: size,weight: .regular)

            }
        }
    }
}

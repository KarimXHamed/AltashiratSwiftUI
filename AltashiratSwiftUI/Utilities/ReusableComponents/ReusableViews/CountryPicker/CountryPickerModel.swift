//
//  CountryPickerModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 14/05/2025.
//
struct CountryPickerModel:Equatable,Identifiable {
    var id: Int
    var countryCode:String
    var flag:String
    
    var displayName:String {
        var formated = countryCode
        if formated.hasPrefix("00") {
            formated.removeFirst(2)
        } else {
            return ""
        }
        return "(+\(formated)) \(flag)"
    }
}

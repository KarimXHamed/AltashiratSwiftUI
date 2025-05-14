//
//  CountryPickerModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 14/05/2025.
//
struct CountryPickerModel:Identifiable {
    var id: Int
    var countrCode:String
    var flag:String
    
    var displayName:String {
        var formated = countrCode
        if formated.hasPrefix("00") {
            formated.removeFirst(2)
        }
        return "(+\(formated)) \(flag)"
    }
}

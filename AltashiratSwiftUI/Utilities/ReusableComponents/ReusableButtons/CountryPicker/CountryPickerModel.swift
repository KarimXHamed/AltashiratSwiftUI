//
//  CountryPickerModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 14/05/2025.
//
struct CountryPickerModel:Equatable,Identifiable {
    var id: Int?
    var countryCode:String?
    var flag:String?
    
    var displayName:String? {
        guard var countryCode = countryCode else {return nil}
        guard let flag = flag else {return nil}
        if countryCode.hasPrefix("00") {
            countryCode.removeFirst(2)
        }
        return "(+\(countryCode)) \(flag)"
    }
}

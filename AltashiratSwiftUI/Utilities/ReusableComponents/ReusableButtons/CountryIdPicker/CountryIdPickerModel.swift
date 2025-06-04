//
//  CountryIdPickerModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 04/06/2025.
//
struct CountryIdPickerModel: Equatable, Identifiable {
    var id: Int?
    var flag: String?
    var name: String?
    
    var displayName:String {
        guard let name = name ,let flag = flag else {return ""}
        return "\(name) \(flag)"
    }
}


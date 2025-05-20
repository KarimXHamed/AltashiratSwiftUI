//
//  LoginUIState.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 18/05/2025.
//
struct LoginUIState {
    
    var isLoading:Bool = false
    var selectedCountry:CountryPickerModel = CountryPickerModel(id: -1, countryCode: "", flag: "")
    var phoneNumber:String = ""
    var phoneNumberError:String = ""
    var password:String = ""
    var passwordError:String = ""
    var countries:[CountryPickerModel] = []
    
}

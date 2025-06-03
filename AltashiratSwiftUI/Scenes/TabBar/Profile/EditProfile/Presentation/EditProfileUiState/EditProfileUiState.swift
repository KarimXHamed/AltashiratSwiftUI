//
//  EditProfileUiState.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 03/06/2025.
//

import SwiftUI

struct EditProfileUiState {
    var firstName: String = ""
    var firstNameError: String = ""
    
    var middleName: String = ""
    var middleNameError: String = ""
    

    var lastName: String = ""
    var lastNameError: String = ""
    
    var phoneNumber: String = ""
    var phoneNumberError: String = ""
    
    var mail: String = ""
    var mailError: String = ""
    
    var selectedCountryCode: CountryPickerModel = .init(id: -1, countryCode: "", flag: "")
    var selectedCountryId: String = ""
    
    var date: String = ""
    var dateError: String = ""
    
    var countries: [CountryPickerModel] = []
    var selectedImage: Image?
}

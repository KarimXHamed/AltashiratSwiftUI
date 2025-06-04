//
//  EditProfileUiState.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 03/06/2025.
//

import SwiftUI
import PhotosUI

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
    
    var selectedCountryCode: CountryPickerModel = .init()
    var selectedCountryId: CountryIdPickerModel = .init()
    
    var date: String = ""
    var dateError: String = ""
    
    var phoneCountries: [CountryPickerModel] = []
    
    var selectedImage: Image?
    var photosPickerItem: PhotosPickerItem?
    
    var selectedDate:Date = Date()
    
    var countries: [CountryIdPickerModel] = []
}

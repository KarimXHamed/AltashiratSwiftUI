//
//  SignUpViewModelProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 14/05/2025.
//
protocol SignUpViewModelProtocol {
    func signUP(model:SignUpRequestModel)
    func getCountries() -> [CountryPickerModel]
}

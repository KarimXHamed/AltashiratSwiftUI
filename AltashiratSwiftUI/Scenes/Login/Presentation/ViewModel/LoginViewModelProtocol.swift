//
//  LoginViewModelProtocol.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 14/05/2025.
//
import Combine
protocol LoginViewModelProtocol {
    //@Published var countries {get set}
    func getCountries () -> [CountryPickerModel]
    func login(model:LoginRequestModel)
    func goToSignUP ()
}


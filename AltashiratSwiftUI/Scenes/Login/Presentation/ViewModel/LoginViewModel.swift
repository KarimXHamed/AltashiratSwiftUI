//
//  LoginViewModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 14/05/2025.
//
import Combine
class LoginViewModel:LoginViewModelProtocol {
    var countries: [Country] = [
            Country(id: 1, name: "Saudi Arabia", currency: "SAR", code: "sa", phoneCode: "00966", flag: "🇸🇦"),
            Country(id: 2, name: "Egypt", currency: "EGP", code: "eg", phoneCode: "0020", flag: "🇪🇬"),
            Country(id: 3, name: "Afghanistan", currency: "AFN", code: "af", phoneCode: "0093", flag: "🇦🇫"),
            Country(id: 4, name: "Albania", currency: "ALL", code: "al", phoneCode: "00355", flag: "🇦🇱"),
            Country(id: 5, name: "Algeria", currency: "DZD", code: "dz", phoneCode: "00213", flag: "🇩🇿"),
            Country(id: 6, name: "Andorra", currency: "EUR", code: "ad", phoneCode: "00376", flag: "🇦🇩"),
            Country(id: 7, name: "Angola", currency: "AOA", code: "ao", phoneCode: "00244", flag: "🇦🇴"),
            Country(id: 8, name: "Argentina", currency: "ARS", code: "ar", phoneCode: "0054", flag: "🇦🇷"),
            Country(id: 9, name: "Armenia", currency: "AMD", code: "am", phoneCode: "00374", flag: "🇦🇲"),
            Country(id: 10, name: "Australia", currency: "AUD", code: "au", phoneCode: "0061", flag: "🇦🇺"),
            Country(id: 11, name: "Austria", currency: "EUR", code: "at", phoneCode: "0043", flag: "🇦🇹"),
            Country(id: 13, name: "Bahrain", currency: "BHD", code: "bh", phoneCode: "00973", flag: "🇧🇭"),
            Country(id: 14, name: "Bangladesh", currency: "BDT", code: "bd", phoneCode: "00880", flag: "🇧🇩"),
            Country(id: 15, name: "Belarus", currency: "BYN", code: "by", phoneCode: "00375", flag: "🇧🇾"),
            Country(id: 16, name: "Belgium", currency: "EUR", code: "be", phoneCode: "0032", flag: "🇧🇪"),
            Country(id: 17, name: "Belize", currency: "BZD", code: "bz", phoneCode: "00501", flag: "🇧🇿"),
            Country(id: 18, name: "Benin", currency: "XOF", code: "bj", phoneCode: "00229", flag: "🇧🇯"),
            Country(id: 19, name: "Bhutan", currency: "BTN", code: "bt", phoneCode: "00975", flag: "🇧🇹"),
            Country(id: 20, name: "Bolivia", currency: "BOB", code: "bo", phoneCode: "00591", flag: "🇧🇴"),
            Country(id: 21, name: "Bosnia and Herzegovina", currency: "BAM", code: "ba", phoneCode: "00387", flag: "🇧🇦")]
    private var router:LoginRouterProtocol
    init(router: LoginRouterProtocol) {
        self.router = router
    }
   
    
    func getCountries() -> [CountryPickerModel] {
        return countries.map {mapCountries(domainModel: $0)}
    }
    
    func login(model: LoginRequestModel) {
        print(model)
    }
    
    private func mapCountries(domainModel:Country) -> CountryPickerModel {
        return CountryPickerModel(id: domainModel.id,
                                  countrCode: domainModel.phoneCode,
                                  flag: domainModel.flag)
    }
    
    func goToSignUP() {
        router.goToSignUP()
    }
    
}

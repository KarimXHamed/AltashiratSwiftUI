//
//  ProfileMenuHelper.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 01/06/2025.
//

class ProfileMenuHelper {
    var profileMenuModels: [ProfileMenuModel] = [
        ProfileMenuModel(id: 0, title: "Login", icon: Icons.loginProfileIcon.imageOriginal),
        ProfileMenuModel(id: 1, title: "Edit password", icon: Icons.editPasswordIcon.imageOriginal),
        ProfileMenuModel(id: 2, title: "About us", icon: Icons.aboutUSIcon.imageOriginal),
        ProfileMenuModel(id: 3, title: "Contact us", icon: Icons.contactUSIcon.imageOriginal),
        ProfileMenuModel(id: 4, title: "Terms and conditions", icon: Icons.termsAndConditionsIcon.imageOriginal),
        ProfileMenuModel(id: 5, title: "Policy", icon: Icons.policyIcon.imageOriginal),
        ProfileMenuModel(id: 6, title: "Language", icon: Icons.languageIcon.imageOriginal)
    ]
    
    func caseLogedin() -> [ProfileMenuModel] {
        let filteredIcons:[ProfileMenuModel] = profileMenuModels.filter{ $0.id != 0 }
        return filteredIcons
    }
    
    func caseLogeout() -> [ProfileMenuModel] {
        let filteredIcons:[ProfileMenuModel] = profileMenuModels.filter{ $0.id != 1 }
        return filteredIcons    }
    
}

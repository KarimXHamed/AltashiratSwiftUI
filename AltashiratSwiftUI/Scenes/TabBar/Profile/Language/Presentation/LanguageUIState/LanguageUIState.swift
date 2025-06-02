//
//  LanguageUIState.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 01/06/2025.
//
struct LanguageUIState {
    var isShowingSnackBar:Bool = false
    var snackBarModel: SnackBarModel = SnackBarModel(type: .errorMessage, message: "must verify mail.", action: {
        print("Verifying mail...")
    })
}


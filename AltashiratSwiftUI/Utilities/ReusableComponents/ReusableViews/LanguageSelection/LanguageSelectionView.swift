//
//  LanguageSelectionView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 29/05/2025.
//
import SwiftUI

class LanguageSelectionViewModel:ObservableObject {
    @Published var languages:[SingleSelectionCellModel] = [.init(title: "Arabic", flag: Icons.SA.imageOriginal, isSelected: true),
                                              .init(title: "English", flag: Icons.UK.imageOriginal, isSelected: false)]
    
    func selectLanguage(id:UUID) {
        for index in languages.indices {
            languages[index].isSelected = (languages[index].id == id)
        }
    }
}

struct LanguageSelectionView: View {
    @StateObject private var viewModel = LanguageSelectionViewModel()
    var body: some View {
        
        VStack(spacing:16) {
            ForEach(viewModel.languages) { language in
                SingleSelectionCell(model: language)
                .onTapGesture {
                    viewModel.selectLanguage(id: language.id)
                }
           
            }
        }
        
    }
    

    
    
    
}

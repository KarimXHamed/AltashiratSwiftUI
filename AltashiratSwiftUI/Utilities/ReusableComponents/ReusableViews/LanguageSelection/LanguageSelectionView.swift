//
//  LanguageSelectionView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 29/05/2025.
//
import SwiftUI

struct LanguageSelectionView: View {
    @State var selectedLanguage: String?
    let languages:[String] = ["Arabic", "English"]
    var body: some View {
        
        VStack(spacing:16) {
            ForEach(languages, id:\.self) { language in
                HStack(spacing: 0){
                
                    Text(language)
                        .foregroundStyle(.text)
                        .font(Fonts.black.getFont(size: 14))
                        .padding(.leading, 8)
                    Spacer()
                    
                    Icons.unselectedMark.imageOriginal
                        .padding(.trailing,16)

                        
                }
                .frame(height: 48)
                .background(Color.profileSeparator)
                .clipShape(.rect(cornerRadius: 24))
           
            }
        }
        
    }
    
    
    
}

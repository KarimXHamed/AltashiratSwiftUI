//
//  CountrySelectionView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 29/05/2025.
//
import SwiftUI

struct CountrySelectionView: View {
    @State var selectedCountry: String?
    let languages:[String] = ["Arabic", "English"]
    var body: some View {
        
        List {
            
            ForEach(languages, id: \.self) { language in
                HStack(spacing:0){
                    
                    Text(language)
                        .font(Fonts.black.getFont(size: 14))
                        .foregroundStyle(.text)
                    Spacer()
                    Image("unselectedMark")
                }
                .clipShape(RoundedRectangle(cornerRadius: 24))
                .background(Color.red)
                .padding()

            }
            
            
            
        }
        .listStyle(SidebarListStyle())
        
    }
    
}

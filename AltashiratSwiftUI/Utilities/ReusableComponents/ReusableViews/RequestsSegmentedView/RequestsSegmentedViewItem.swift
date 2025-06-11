//
//  RequestsSegmentedViewItem.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import SwiftUI

struct RequestsSegmentedViewItem:View {
    let model: RequestsSegmentedViewModel
    
    var body: some View {
        HStack(spacing: 0){
            
            getItemIcon()
                .padding(.leading, 8.2)
            
            Text(model.title)
                .padding(.leading, 8.1)
                .foregroundStyle(model.isSelected ?
                    .white :
                        .notSelectedButton)
                .font(Fonts.extraBold.getFont(size: 12))
            Spacer()
            
            
            
        }
        .frame(height: 40)
        .background(model.isSelected ?
                    Color.first :
                        Color.clear
        )
        .clipShape(.rect(cornerRadius: 20))
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(model.isSelected ?
                        Color.clear :
                        Color.notSelectedButton
                        ,
                        lineWidth: 1.2)
        }
    }
    
    @ViewBuilder
    private func getItemIcon() -> some View {
        
        if model.isSelected {
            model.icon.imageOriginal
        } else {
            model.icon.imageTemplate
                .foregroundStyle(.notSelectedButton)
        }
        
    }
    
}



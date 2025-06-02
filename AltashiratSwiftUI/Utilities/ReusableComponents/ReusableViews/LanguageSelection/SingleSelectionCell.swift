//
//  SingleSelectionCell.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 02/06/2025.
//
import SwiftUI

struct SingleSelectionCell: View {
    
    var model:SingleSelectionCellModel
    
    var body: some View {
        HStack(spacing: 0){
        
            model.flag
                .padding(.horizontal, 8)
            
            Text(model.title)
                .foregroundStyle(.text)
                .font(Fonts.black.getFont(size: 14))
            Spacer()
            
            if model.isSelected {
                Icons.selectedMark.imageOriginal
                    .padding(.trailing,16)
            }else {
                Icons.unselectedMark.imageOriginal
                    .padding(.trailing,16)
            }

                
        }
        .frame(height: 48)
        .background(model.isSelected ?
                    Color.white :
                    Color.profileSeparator
        )
        .clipShape(.rect(cornerRadius: 24))
        .overlay {
            RoundedRectangle(cornerRadius: 24)
                .stroke(model.isSelected
                        ? Color.second :
                            Color.clear,
                        lineWidth: 1)
        }
    }
}

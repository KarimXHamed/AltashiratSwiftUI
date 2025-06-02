//
//  TabBarIconCondition.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 27/05/2025.
//
import SwiftUI
struct TabBarIconCondition {
    var title: String
    var image: String
    var isSelected: Bool
    
    @ViewBuilder
    func getText() -> some View {
        if isSelected {
            Text(title)
                         .font(Fonts.bold.getFont(size: 12))
                         .foregroundColor(.text)
                         .frame(width: 120, height: 19)
                         .padding(.bottom, 25)
        } else {
                        Text(title)
                            .font( Fonts.bold.getFont(size: 12) )
                            .foregroundColor( .textFieldPH )
                            .frame(width: 120, height: 19)
                            .padding(.bottom,25)
        }
    }

    @ViewBuilder
    func getImage() -> some View {
      
        if isSelected {
            Image(image)
                     .renderingMode(.template)
                     .foregroundColor(.white)
                     .offset(y: -13)
                     .padding(.bottom , 50)
        } else {
                        Image(image)
                            .renderingMode(.original)
                            .foregroundColor(.orange)
                            .offset(y: 0)
                            .padding(.bottom , 50)
        }

        
    }

    
}

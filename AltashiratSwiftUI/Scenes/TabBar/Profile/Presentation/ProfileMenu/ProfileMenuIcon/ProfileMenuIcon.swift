//
//  ProfileMenuIcon.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 28/05/2025.
//
import SwiftUI

struct ProfileMenuIcon: View {
    var model: ProfileMenuModel
    
    var body: some View {
        HStack(spacing: 0) {
           
            imageView
            
            Text(model.title)
            
            Spacer()
            
            Icons.profileMenuArrow.imageOriginal
                .scaleEffect(x: -1, y: 1)
                .padding(.trailing, 16.3)
            
        }
        
    }
    private var imageView: some View {
        ZStack{
            Circle()
                .fill(Color.profileSeparator)
                .frame(width: 32, height: 32)
            model.icon
                .frame(width: 20, height: 20)
        }
        .padding(.leading,15)
        .padding(.trailing,18)
    }
    
    
}

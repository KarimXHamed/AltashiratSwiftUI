//
//  SnackBarView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 01/06/2025.
//
import SwiftUI

struct SnackBarView :View{
    var model : SnackBarModel = .init(type: .successMessage, message: "success", action: {print("action tapped")})
    @Binding var isShowing: Bool
    
    var body : some View {
            ZStack {
                
                
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle( Color.snackBar.opacity(0.9) )
                    .frame(height: 50)
        
                HStack(spacing:0){
                    
                    Text("Success message")
                        .foregroundStyle(.white)
                        .font(Fonts.light.getFont(size: 16))
                        .padding(.leading, 16)
                    
                    Spacer()
                    
                    if model.type == .errorMessage{
                        actionButton(action: model.action)
                    }
                    
                    if model.type == .errorMessage || model.type == .successMessage {
                        dismissButton
                    }

                    
                }
                
            }
            
        
        
    }
    
    func actionButton(action: @escaping () -> Void) -> some View {
        Button {
            action()
            isShowing = false
        } label: {
            Text("Confirm")
                .foregroundStyle(.white)
                .font(Fonts.light.getFont(size: 16))

        }
        .frame(width: 65, height: 31)
        .background(Color.first)
        .cornerRadius(8)
        .padding(.trailing, 6)
    }
    
    var dismissButton: some View {
        Button {
            isShowing = false
        } label: {
            Image(systemName: "xmark")
                .foregroundStyle(.white)

        }
        .frame(width: 36, height: 31)
        .background(Color.red)
        .cornerRadius(8)
        .padding(.trailing, 8)
    }
    
}

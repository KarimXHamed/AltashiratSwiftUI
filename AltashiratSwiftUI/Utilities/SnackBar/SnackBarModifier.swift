//
//  SnackBarModifier.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 01/06/2025.
//
import SwiftUI

struct SnackBarModifier: ViewModifier {
    @Binding var isShowing:Bool
    var model: SnackBarModel
    //add var for time
    
    func body(content:Content) -> some View {
        ZStack {
            content
            if isShowing {
                VStack(spacing: 0) {
                    SnackBarView(model: model, isShowing: $isShowing)
                        .padding(.horizontal, 16)
                        .padding(.top, 50)
                        .transition(.move(edge: .top))
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now()+5) {
                                isShowing = false
                            }
                        }
                    
                    Spacer()
                }
                .ignoresSafeArea()
                
            }
            
        }
        
    }
    
  
    
    
    
}

extension View {
    
    func snackBar(isShowing: Binding<Bool>, model:SnackBarModel) -> some View {
        self.modifier(SnackBarModifier(isShowing: isShowing, model: model) )
    }
    
}

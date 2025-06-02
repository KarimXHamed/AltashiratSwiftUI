//
//  LanguageView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 29/05/2025.
//
import SwiftUI

struct LanguageView<ViewModel:LanguageViewModelProtocol>:View {
    
    @StateObject var viewModel:ViewModel
    
    
    var body: some View {
        VStack(spacing: 0){
          
            ReusableBackButton(title: "language") {
                viewModel.onAction(action: .onBackClicked)
            }
            .padding(.bottom, 29)
            .padding(.top, 68)
            
            HStack(spacing: 0) {
                
                Rectangle()
                    .fill(Color.first)
                    .frame(width:4,height: 24)
                    .padding(.leading, 8)
                    .padding(.trailing, 5)
                
                Text("Please choose language")
                    .font(Fonts.bold.getFont(size: 14))
                    .foregroundStyle(.text)
                
                Spacer()
                

            }
            .padding(.bottom, 15)
            
            LanguageSelectionView()
                .padding(.horizontal, 16)
            
            
            Spacer()
            
            GradientButton(title: "Save", action: {
                viewModel.state.isShowingSnackBar.toggle()
            },
                           image: Icons.saveButtonIcon.imageOriginal)
            .padding(.horizontal, 16)
            .padding(.bottom,23)
            
      }
        .ignoresSafeArea()
        .snackBar(isShowing: $viewModel.state.isShowingSnackBar, model: viewModel.state.snackBarModel)
        
    }
    
}

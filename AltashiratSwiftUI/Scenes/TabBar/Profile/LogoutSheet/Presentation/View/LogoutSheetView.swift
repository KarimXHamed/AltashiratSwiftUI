//
//  LogoutSheetView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 02/06/2025.
//
import SwiftUI
struct LogoutSheetView: View {
    
    @EnvironmentObject var appState:AppState
    private var viewModel: LogoutSheetViewModelProtocol

    
    init(viewModel: LogoutSheetViewModelProtocol) {
        self.viewModel = viewModel
    }
    
    var body: some View {

        VStack(spacing: 0) {
           
            topView
            
            image
            
            bottomView
            
            Spacer()
            
            
        }
        .ignoresSafeArea()
        .presentationCornerRadius(60)

    }
    var topView: some View {
        
        VStack(spacing: 0) {
            RoundedRectangle(cornerRadius: 3.5)
                .frame(width:114, height: 4)
                .foregroundStyle(Color.first)
                .padding(.bottom, 4)
            
            Text("Confirm Logout")
                .frame(height:26)
                .font(Fonts.extraBold.getFont(size: 16))
                .foregroundStyle(.text)
            
        }
        .padding(.top,0)
        
    }
    
    var image: some View {
        Icons.logoutSheetImage.imageOriginal
            .frame(width: 200, height: 148.8)
            .padding(.top, 31)
            .padding(.bottom, 22.2)
    }
    
    var bottomView: some View {
        
        VStack(spacing: 0) {
            
            Text("Press Logout To Continue")
                .frame(height:22)
                .font(Fonts.bold.getFont(size: 14))
                .foregroundStyle(.text)
                .padding(.bottom, 26)
            
            GradientButton(title: "Logout", action: {
                appState.state.isLoggedIn = false
                viewModel.onAction(.logoutClicked)
            },
                           image: Icons.loginIcon.imageOriginal)
            .padding(.horizontal, 8)
            
        }
        
    }
    
    

}

//#Preview {
//    LogoutSheetView()
//}

//
//  ProfileView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 28/05/2025.
//
import SwiftUI
struct ProfileView<ViewModel:ProfileViewModelProtocol>: View {
    @AppStorage("accessToken") private var accessToken:Bool = false
    @StateObject var viewModel:ViewModel
    
    var profileMenuHelper = ProfileMenuHelper()
    
    var filteredIcons: [ProfileMenuModel] {
        
        if accessToken {
                return profileMenuHelper.caseLogedin()
            } else {
                return profileMenuHelper.caseLogeout()
            }
        
    }
    
    var listTopPadding: CGFloat {
        if accessToken {
            return 25
        }
        return 131
    }
    
    var body: some View {
        
        VStack(spacing: 0){
            
            if accessToken {
                upperPart
            }
            lowerPart
                        
        }
        .ignoresSafeArea()
        
    }
    
    var upperPart: some View {
        
        VStack(spacing: 0) {
            
            ProfileImage(image: $viewModel.state.profilePicture)
                .padding(.top,96)

            
            Text("Nadeen mohamed Elsayed")
                .font( Fonts.extraBold.getFont(size: 16) )
                .foregroundColor( .text )
                .frame(height: 26)
                .padding(.bottom,5)
                .padding(.top, 3)
            
            GradientButton(title: "Edit Profile", action: {
                viewModel.onAction( action: ProfileUIAction.onEditProfileClicked )
            },
                height: 36)
            .padding(.bottom,16)
            .padding(.horizontal,101)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.profileSeparator)
                .padding(.horizontal,22)
        }
        
    }
    
    var lowerPart: some View {
        VStack(spacing:0) {
            List {
                ForEach(filteredIcons) { icon in
                    
                    ProfileMenuIcon(model: icon)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets())
                        .onTapGesture {
                            viewModel.onAction( action: ProfileUIAction.onListClicked(icon: icon) )
                        }
                    
                }
            }
            .listStyle(.plain)
            .listSectionSeparator(.hidden)
            .scrollDisabled(true)
            
            Spacer()
            
            logoutStack
        }
        .padding(.top, listTopPadding)
    }
    
    var logoutStack: some View {
        
        HStack(spacing: 0) {
            
            Text("current version: v1.0")
                .frame(height: 19)
                .font(Fonts.bold.getFont(size: 12))
                .foregroundColor(.text)
                .padding(.leading, 16)
            
            Spacer()
            
            if accessToken {
                logoutButton
            }
                
        }
        .padding(.bottom, 40)
        
    }
    
    var logoutButton: some View {
        
        Button {
            viewModel.onAction( action: ProfileUIAction.onLogoutClicked )
        } label: {
            
            HStack(spacing: 0) {
                

                
                Text("Logout")
                    .font(Fonts.extraBold.getFont(size: 14))
                    .foregroundStyle(.logoutButton)
                    .padding(.leading, 9)
                    .padding(.trailing, 10)
                                    
                Icons.logoutProfileIcon.imageOriginal
                    .padding(.trailing, 9)
                

                
            }
            .frame( height: 28)
            .background(Color.profileSeparator)
            .clipShape( .capsule )
            .padding(.trailing,16)
            
            
        }
    }
    
}

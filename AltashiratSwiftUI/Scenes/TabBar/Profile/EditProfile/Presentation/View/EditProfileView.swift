//
//  EditProfileView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 03/06/2025.
//
import SwiftUI
import PhotosUI

struct EditProfileView <ViewModel:EditProfileViewModelProtocol> :View {
    @State var profileImage:Image = Icons.profilePlaceholder.imageOriginal
    @State var photosPickerItem: PhotosPickerItem?
    @State var textFieldText:String = ""
    @State var textFieldErrorText:String = ""
    
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0){
                topBar
                
                profileImagePicker
                
                editProfileForm

            }
            .onChange(of: photosPickerItem) { _, _ in
                Task {
                    if let photosPickerItem,
                       let data = try? await photosPickerItem.loadTransferable(type: Data.self) {
                        if let image = UIImage(data: data) {
                            profileImage = Image(uiImage: image)
                        }
                    }
                    photosPickerItem = nil
                }
            }
            .onAppear {
                viewModel.onAction(.onAppear)
            }
        }
    }
    
    var editProfileForm: some View {
        Group {
            TextFieldReusableView(leftImage: Icons.profileIcon.rawValue,
                                  placeHolder: "Enter first name",
                                  title: "First Name",
                                  errorText: $viewModel.state.firstName,
                                  text: $viewModel.state.firstNameError)
            
            TextFieldReusableView(leftImage: Icons.profileIcon.rawValue,
                                  placeHolder: "Enter middle name",
                                  title: "Middle Name",
                                  errorText: $viewModel.state.middleName,
                                  text: $viewModel.state.middleNameError)
            
            TextFieldReusableView(leftImage: Icons.profileIcon.rawValue,
                                  placeHolder: "Enter last name",
                                  title: "Last Name",
                                  errorText: $viewModel.state.lastName,
                                  text: $viewModel.state.lastNameError)
            
            PhoneReusableView(phoneNumber: $viewModel.state.phoneNumber,
                              selectedCountry:$viewModel.state.selectedCountryCode,
                              countries: $viewModel.state.countries,
                              errorText: $viewModel.state.phoneNumberError)
            
            TextFieldReusableView(leftImage: Icons.mailIcon.rawValue,
                                  placeHolder: "Enter mail for precceding",
                                  title: "Mail",
                                  errorText: $viewModel.state.mail,
                                  text: $viewModel.state.mailError)
            DateReusableView()
            
            GradientButton(title: "Save", action: {
                viewModel.onAction(.onSaveClicked)
            },image: Icons.saveButtonIcon.imageOriginal)
            .padding(.top, 7)
            
  
            
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 17)
        

        
    }
    
    var profileImagePicker: some View {
        PhotosPicker(selection:$photosPickerItem , matching: .images) {
            profileImagePickerLabel
        }
    }
    
    var profileImagePickerLabel: some View {
        ProfileImage(image: $viewModel.state.selectedImage)
            .overlay {
                VStack(spacing: 0){
                    Spacer()
                    
                    HStack(spacing: 0){
                        
                        Icons.editProfilePictureIcon.imageOriginal
                            .frame(width: 26, height: 26)
                            .padding(.leading, -3)
                            .padding(.bottom, 1)
                        
                        Spacer()
                        
                    }
                }
            }
    }
    
    var topBar: some View {
        HStack(spacing: 0) {
            
            ReusableBackButton(title: nil) {
                print("back pressed")
            }
            
            Spacer()
            
            moreButton
            
        }
    }
    
    var moreButton: some View {
        Button{
            print("more pressed")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 14.5)
                    .foregroundStyle(Color.profileSeparator)
                
                Text("More")
                    .foregroundStyle(.first)
                    .font(Fonts.extraBold.getFont(size: 14))
            }
        }
        .frame(width: 71, height: 29)
        .padding(.trailing, 15)
    }
    
}

//
//  CountryPicker.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/05/2025.
//

import SwiftUI

struct CountryPicker: View {
    @State private var countriesIsShown:Bool = false
    @Binding var selectedCountry:CountryPickerModel
    @Binding var countries:[CountryPickerModel]
    
    var body: some View {

            Button(action: {
                countriesIsShown.toggle()
            }) {
                Text(selectedCountry.displayName)
                    .font(Fonts.black.getFont(size: 12))
                    .foregroundColor(.white)
                    .frame(width: 81,height: 46)
            }
            .background(Color.first)
            .sheet(isPresented: $countriesIsShown) {
                NavigationStack{
                List(countries) { country in
                    HStack{
                        Text(country.displayName)
                        if country.displayName == selectedCountry.displayName {
                            Image(systemName:"checkmark")
                        }
                        Spacer()
                        }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        selectedCountry = country
                        countriesIsShown = false
                    }
                   
                }
                .listStyle(.plain)
                .presentationDetents([.medium, .large])
                .listRowInsets(EdgeInsets())
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button {
                            countriesIsShown = false
                        } label: {
                            Text("Cancel")
                                .foregroundColor(.blue)
                        }
                    }
                }
            }

            
        }
    }
}

//#Preview {
//    CountryPicker()
//}

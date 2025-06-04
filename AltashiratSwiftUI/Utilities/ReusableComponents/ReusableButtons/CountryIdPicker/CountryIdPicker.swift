//
//  CountryIdPicker.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 04/06/2025.
//
import SwiftUI

struct CountryIdPicker : View {
   
    @State private var countriesIsShown:Bool = false
    @Binding var selectedCountry:CountryIdPickerModel
    @Binding var countries:[CountryIdPickerModel]
    
    var body: some View {
        
        Button(action: {
            countriesIsShown.toggle()
        }) {
            Icons.downArrow.imageOriginal
        }
        .padding(.trailing,16.9)
        .sheet(isPresented: $countriesIsShown) {
            NavigationStack{
                List(countries) { country in
                    HStack{
                        
                        if let countryName = country.name{
                            Text(countryName)
                                .padding(.trailing, 5)
                        }
                        
                        if let countryFlag = country.flag {
                            Text(countryFlag)
                        }
                        
                        Spacer()
                        
                        if country.displayName == selectedCountry.displayName {
                            Image(systemName:"checkmark")
                        }
                        
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
//        .onChange(of: countries) {
//            if let firstCountry = countries.first {
//                selectedCountry = firstCountry
//            }
//        }
        
    }
    
}

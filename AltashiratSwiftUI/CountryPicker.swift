//
//  CountryPicker.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/05/2025.
//

import SwiftUI

struct CountryPicker: View {
    @State private var selectedCountry = "(+966) 🇸🇦"
    @State private var countries:[String] = [
        "(+966) 🇸🇦",
        "(+1) 🇺🇸",
        "(+44) 🇬🇧",
        "(+91) 🇮🇳",
        "(+81) 🇯🇵",
        "(+49) 🇩🇪",
        "(+33) 🇫🇷",
        "(+39) 🇮🇹",
        "(+61) 🇦🇺",
        "(+86) 🇨🇳"
    ]
    var body: some View {
        NavigationStack {
                Picker("",selection: $selectedCountry) {
                    ForEach(countries,id:\.self){country in
                        Text(country)
                            .font(.system(size: 12,weight: .semibold))
                            .foregroundColor(.white)

                            
                    }
                }
                .background(Color.first)
                .frame(width:81, height: 46)
                .pickerStyle(.inline)
            }

        
    }
}

//#Preview {
//    CountryPicker()
//}

//
//  TabLayoutView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 27/05/2025.
//
import SwiftUI

struct TabsLayoutView: View {
    @State var selectedTab: TabBarIcon = .profile
    @Namespace var namespace
    
    var body: some View {
        HStack {
            Spacer(minLength: 0)
            ForEach(TabBarIcon.allCases) { tab in
                TabButton(tab: tab, selectedTab: $selectedTab, namespace: namespace)
                    .frame(width: 65, height: 65, alignment: .center)
                
                Spacer(minLength: 0)
            }
        }
    }
}

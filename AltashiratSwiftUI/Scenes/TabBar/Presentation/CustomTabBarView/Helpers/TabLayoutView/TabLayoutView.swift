//
//  TabLayoutView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 27/05/2025.
//
import SwiftUI
import Factory
struct TabsLayoutView: View {
    @Binding var selectedTab: TabBarIcon
    var namespace : Namespace.ID
    var onTabSelected: (TabBarIcon) -> Void
    
    var body: some View {
        HStack {
            Spacer(minLength: 0)
            ForEach(TabBarIcon.allCases) { tab in
                TabButton(tab: tab,
                          selectedTab: $selectedTab,
                          namespace: namespace,
                          onTap:
                            {
                    onTabSelected(tab)
                }
                )
                .frame(width: 85, height: 85, alignment: .center)
                
                Spacer(minLength: 0)
            }
        }
    }
}

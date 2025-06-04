//
//  TabButton.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 27/05/2025.
//
import SwiftUI
struct TabButton: View {
    let tab: TabBarIcon
    
    @Binding var selectedTab: TabBarIcon
    
    var namespace: Namespace.ID
    
    var onTap: () -> Void
    
    private var tabIconCondition: TabBarIconCondition {
        .init(title: tab.title, image: tab.icon , isSelected: isSelected)
    }
    
    private var tabTitleView: some View {
        tabIconCondition.getText()
    }
    
    private var tabImageView: some View {
        tabIconCondition.getImage()
            .animation(
                isSelected
                ? .spring(response: 0.5, dampingFraction: 0.3, blendDuration: 1)
                : .spring(),
                value: selectedTab
            )
    }
    
    
    var body: some View {
        Button {
            onTap()
            withAnimation {
                selectedTab = tab
            }
        } label: {
            ZStack {
                
                VStack {
                    Spacer()
                    tabTitleView
                    
                }
                
                
                if isSelected {
                    ZStack {
                        
                        ArcShape()
                            .frame(width: 56, height: 56)
                            .foregroundColor(.white)
                            .shadow(color: .tabBarShadow.opacity(0.5) , radius: 2)
                        
                        Circle()
                            .frame(width: 46, height: 46)
                            .foregroundStyle( .first )
                            .background {
                                Circle()
                                    .stroke(lineWidth: 10)
                                    .fill(.white)
                            }
                        
                    }
                    .offset(y: -37.5)
                    .matchedGeometryEffect(id: "Selected Tab", in: namespace)
                    .animation(.spring(), value: selectedTab)
                }
                
                tabImageView
                
            }
        }
        .buttonStyle(.plain)
        
        
        
    }
    private var isSelected: Bool {
        selectedTab == tab
    }
}


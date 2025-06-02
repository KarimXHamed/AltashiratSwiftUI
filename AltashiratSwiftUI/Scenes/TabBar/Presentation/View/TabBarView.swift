//
//  TabBarView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 26/05/2025.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var selectedTab: TabBarIcon = .profile
    @Namespace var namespace
    
    var body: some View {
            CustomTabBarView()
 
    }
}
//#Preview {
//    TabBarView()
//}

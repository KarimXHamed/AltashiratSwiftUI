//
//  TabBarIcon.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 27/05/2025.
//
import SwiftUI

enum TabBarIcon: CaseIterable , Identifiable {
    var id : UUID {
        UUID()
    }
    
    case platform
    case requests
    case profile

    var title:String {
        switch self {
        case .platform:
            return "platform"
        case .requests:
            return "requests"
        case .profile:
            return "Profile"
        }
        
    }
    
    var icon:String {
        switch self {
        case .platform:
            return "unselectedStamp"
        case .requests:
            return "unselectedRequests"
        case .profile:
            return "unselectedProfile"
        }
    }
    
    var view: some View { // needs to be removed
        switch self {
        case .platform:
            return Text("abc")
            
        case .requests:
            return Text("def")

        case .profile:
            return Text("ghi")

        }
    }

    
}


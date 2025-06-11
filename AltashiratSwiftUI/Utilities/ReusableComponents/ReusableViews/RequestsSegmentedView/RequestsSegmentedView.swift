//
//  RequestsSegmentedView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 10/06/2025.
//
import SwiftUI

struct RequestsSegmentedView: View {
    
    @StateObject private var itemsHelper = RequestSegmentedViewHelper()
    
    
    var body: some View {
        HStack(spacing: 5) {
            
            ForEach(itemsHelper.items) { item in
                
                RequestsSegmentedViewItem(model: item)
                    .onTapGesture {
                        itemsHelper.selectItem(id: item.id)
                    }
                
            }

        }
        
    }
}

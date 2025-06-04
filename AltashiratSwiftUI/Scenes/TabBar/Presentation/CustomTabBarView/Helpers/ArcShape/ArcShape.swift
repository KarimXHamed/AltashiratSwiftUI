//
//  ArcShape.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 04/06/2025.
//
import SwiftUI

struct ArcShape:Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                        radius: rect.height/2,
                        startAngle: Angle(degrees: 200),
                        endAngle: Angle(degrees: -10),
                        clockwise: false)
            
            
        }
    }
    
}

//
//  AppTabbarShape.swift
//  QuizySwiftUI
//
//  Created by Valentine Miranda on 11/10/23.
//

import SwiftUI

struct AppTabbarShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        let curveRadius: CGFloat = rect.width * 0.1
        
        return Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.midX - curveRadius, y: rect.minY))

            // adding curve
            path.addQuadCurve(to: CGPoint(x: rect.midX + curveRadius, y: rect.minY), control: CGPoint(x: rect.midX, y: rect.minY + curveRadius))
            
            // confirmed
            path.move(to: CGPoint(x: rect.midX + curveRadius, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: rect.origin)
        }

    }
}

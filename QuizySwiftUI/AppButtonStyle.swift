//
//  ContentView.swift
//  QuizySwiftUI
//
//  Created by Valentine Miranda on 27/09/23.
//

import SwiftUI

struct AppButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button("Testing") {
            print("Testing")
        }
        .buttonStyle(AppButtonStyle(backgroundColor: .indigo, foregroundColor: .white))
    }
}

struct AppButtonStyle: ButtonStyle {
    var backgroundColor: Color
    var foregroundColor: Color
    
    init(backgroundColor: Color, foregroundColor: Color) {
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
            .foregroundStyle(foregroundColor)
            .background(backgroundColor)
            .cornerRadius(20)
            .opacity(configuration.isPressed ? 0.8 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
    }
    
}

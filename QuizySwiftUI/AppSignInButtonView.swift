//
//  AppSignInButton.swift
//  QuizySwiftUI
//
//  Created by Valentine Miranda on 28/09/23.
//

import SwiftUI

struct AppSignInButtonView: View {
    var text: String = ""
    var foregroundColor: Color = .white
    var backgroundColor: Color = .indigo
    var action: (() -> Void)
    
    var body: some View {
        Button(action: self.action, label: {
            HStack(spacing: 20) {
                Spacer()
                Image(systemName: "circle")
                Text(self.text)
                Spacer()
            }
        })
        .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
        .foregroundStyle(self.foregroundColor)
        .background(self.backgroundColor)
        .cornerRadius(20)

    }
}

struct AppSignInButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AppSignInButtonView(action: {})
    }
}

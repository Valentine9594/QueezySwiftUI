//
//  AppTextfieldView.swift
//  QuizySwiftUI
//
//  Created by Valentine Miranda on 28/09/23.
//

import SwiftUI

struct AppTextfieldView: View {
    public var name: String
    public var placeholder: String
    
    var text: Binding<String>
    
    init(name: String, placeholder: String, text: Binding<String>) {
        self.name = name
        self.placeholder = placeholder
        self.text = text
    }
    
    var body: some View {

        VStack(alignment: .leading, spacing: 10) {
            Text(name.capitalized)
                .fontWeight(.bold)
            
            HStack(alignment: .center, spacing: 8) {
                Image(systemName: "person.fill")
                    .padding(.leading, 8)
                
                TextField(placeholder.capitalized, text: text)
                    .padding(.trailing, 8)
            }
            .frame(maxWidth: .infinity, maxHeight: 60, alignment: .center)
            .background(Color.white)
            .cornerRadius(10)
        }
        
    }
}

struct AppSecurefieldView: View {
    public var name: String
    public var placeholder: String
    
    @State var secureText: Bool = true
    var text: Binding<String>
    
    init(name: String, placeholder: String, text: Binding<String>) {
        self.name = name
        self.placeholder = placeholder
        self.text = text
    }
    
    var body: some View {

        VStack(alignment: .leading, spacing: 10) {
            Text(name.capitalized)
                .fontWeight(.bold)
            
            HStack(alignment: .center, spacing: 8) {
                Image(systemName: "lock.fill")
                    .padding(.leading, 8)
                
                if secureText {
                    SecureField(placeholder.capitalized, text: text)
                } else {
                    TextField(placeholder.capitalized, text: text)
                }
                
                if secureText {
                    Image(systemName: "eye.fill")
                        .padding(.trailing, 8)
                        .onTapGesture {
                            displayPassword()
                        }
                } else {
                    Image(systemName: "eye.slash.fill")
                        .padding(.trailing, 8)
                        .onTapGesture {
                            displayPassword()
                        }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 60, alignment: .center)
            .background(Color.white)
            .cornerRadius(10)
        }
        
    }
    
    private func displayPassword() {
        secureText.toggle()
    }
}

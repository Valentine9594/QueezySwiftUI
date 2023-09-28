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
    public var secureText: Bool = false
    
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
                Image(systemName: "lock")
                    .padding(.leading, 8)
                
                TextField(placeholder.capitalized, text: text)
                
                Image(systemName: "eye")
                    .padding(.trailing, 8)
//                        .hidden()
            }
            .frame(maxWidth: .infinity, maxHeight: 60, alignment: .center)
            .background(Color.white)
            .cornerRadius(10)
        }
        
    }
}

//struct AppTextfieldView_Previews: PreviewProvider {
//    @State var someText: String = ""
//    
//    static var previews: some View {
//        AppTextfieldView(name: "email", placeholder: "your email address", text: )
//            .padding(8)
//            .background(Color.gray.opacity(0.4))
//    }
//}

//
//  SignInView.swift
//  QuizySwiftUI
//
//  Created by Valentine Miranda on 28/09/23.
//

import SwiftUI

struct SignInView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.gray.opacity(0.2)
            
            //MARK: For Social Media SignIn Buttons
            VStack(alignment: .center, spacing: 20) {
                VStack(alignment: .center, spacing: 20) {
                    Button(action: {
                        print("google")
                    }, label: {
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName: "circle")
                            Text("Sign in with Google")
                        }
                    })
                    .buttonStyle(AppButtonStyle(backgroundColor: .gray.opacity(0.2), foregroundColor: .black))
                    
                    Button(action: {
                        print("facebook")
                    }, label: {
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName: "circle")
                            Text("Sign in with Facebook")
                        }
                    })
                    .buttonStyle(AppButtonStyle(backgroundColor: .blue, foregroundColor: .white))
                    
                }
                
                //MARK: For Divider with OR
                HStack(alignment: .center, spacing: 10) {
                    VStack(alignment: .center, spacing: 8) {
                        Divider()
                    }
                    
                    Text("OR")
                        .foregroundStyle(Color.gray)
                    
                    VStack(alignment: .center, spacing: 8) {
                        Divider()
                    }
                }
                
                
            }
            .padding(15)
 
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Login")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .onTapGesture {
                        dismiss()
                    }
            }
            
        }

    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

//
//  ContentView.swift
//  QuizySwiftUI
//
//  Created by Valentine Miranda on 27/09/23.
//

import SwiftUI

struct LoginView: View {
    @State var loginNavigate: Bool = false
    @State var signupNavigate: Bool = false
    @State var laterNavigate: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.indigo
                
                VStack(alignment: .center, spacing: 10) {
                    VStack(alignment: .center, spacing: 16) {
                        Image("AppLogo")
                        
                        Text("Queezy")
                            .foregroundStyle(.white)
                            .font(.system(.title2))
                            .fontWeight(.bold)
                    }
                    
                    Image("PeopleChatting")
                        .resizable(resizingMode: .stretch)
                        .frame(width: UIScreen.main.bounds.width * 0.85, height: 274, alignment: .center)
                                        
                    LoginActionView(loginNavigate: $loginNavigate, signupNavigate: $signupNavigate, laterNavigate: $laterNavigate)
                        .cornerRadius(10)
                        .navigationDestination(isPresented: $loginNavigate) {
                            SignInView()
                        }
                }
                .padding(16)
            }
        }

    }

    struct LoginActionView: View {
        @Binding var loginNavigate: Bool
        @Binding var signupNavigate: Bool
        @Binding var laterNavigate: Bool
        
        var body: some View {
            ZStack(alignment: .center) {
                Color.white
                
                VStack(alignment: .center, spacing: 24) {
                    VStack(alignment: .center, spacing: 12) {
                        Text("Login or Sign Up")
                            .fontWeight(.bold)
                            .font(.custom("Arial", size: 24))
                        
                        Text("Login or create an account to take quiz, take part in challenge, and more.")
                            .multilineTextAlignment(.center)
                            .font(.custom("Arial", size: 16))
                    }
                    
                    VStack(alignment: .center, spacing: 16) {
                        Button("LOGIN", action: {
                            self.loginNavigate = true
                        })
                        .buttonStyle(AppButtonStyle(backgroundColor: .indigo, foregroundColor: .white))
                        
                        Button("Create an account", action: {
                            self.signupNavigate = true
                        })
                        .buttonStyle(AppButtonStyle(backgroundColor: .gray.opacity(0.4), foregroundColor: .indigo))
                        
                        Button("Later", action: {
                            self.laterNavigate = true
                        })
                        .buttonStyle(AppButtonStyle(backgroundColor: .clear, foregroundColor: .gray))

                    }
                }
                .padding(18)
            }
        }

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

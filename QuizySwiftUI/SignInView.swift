//
//  SignInView.swift
//  QuizySwiftUI
//
//  Created by Valentine Miranda on 28/09/23.
//

import SwiftUI

struct SignInView: View {
    @Environment(\.dismiss) var dismiss
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.red.opacity(0.1)
            
            GeometryReader { gemotry in
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    VStack(alignment: .center, spacing: 0) {
                        
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
                                .buttonStyle(AppButtonStyle(backgroundColor: .gray.opacity(0.3), foregroundColor: .black))
                                
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
                            .frame(height: 120)
                            
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
                            .frame(height: 20)
                            
                            VStack(alignment: .center, spacing: 20) {
                                
                                AppTextfieldView(name: "email", placeholder: "your email address", text: $email)
                                    .onChange(of: email) { newValue in
                                        print(newValue)
                                    }
                                
                                AppTextfieldView(name: "password", placeholder: "your password", text: $password)
                                
                                Button("LOGIN", action: {
                                    print("LOGIN")
                                })
                                .buttonStyle(AppButtonStyle(backgroundColor: .indigo, foregroundColor: .white))
                                
                                Button("Forgot Password?", action: {
                                    print("forgot password")
                                })
                                .buttonStyle(AppButtonStyle(backgroundColor: .clear, foregroundColor: .indigo))
                                
                                Text(self.getTermsAndConditionsString())
                                    .multilineTextAlignment(.center)
                                
                            }
                            .frame(height: 400)
                            
                            
                        }
                        .padding(20)
                        
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
                    .frame(height: gemotry.size.height, alignment: .top)
                    .safeAreaInset(edge: .bottom, alignment: .center, spacing: 200) {
                        Spacer()
                    }
                    
                }
                
            }
            
        }
    }
    
    private func getTermsAndConditionsString() -> AttributedString {
        let initialString = "By continuing, you agree to the "
        let terms = "Terms of Services"
        let and = " & "
        let privacy = "Privacy Policy"
        
        let normalAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: Color.gray.opacity(0.5)]
        let highlightedAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: Color.black]
        
        var attributedInitialString = AttributedString(stringLiteral: initialString)
        attributedInitialString.setAttributes(AttributeContainer(normalAttributes))
        
        var attributedTerms = AttributedString(stringLiteral: terms)
        attributedTerms.setAttributes(AttributeContainer(highlightedAttributes))
        
        var attributedAnd = AttributedString(stringLiteral: and)
        attributedAnd.setAttributes(AttributeContainer(normalAttributes))
        
        var attributedPrivacy = AttributedString(stringLiteral: privacy)
        attributedPrivacy.setAttributes(AttributeContainer(highlightedAttributes))
        
        attributedAnd.append(attributedPrivacy)
        attributedTerms.append(attributedAnd)
        attributedInitialString.append(attributedTerms)
        
        return attributedInitialString
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

//
//  LoginModel.swift
//  QuizySwiftUI
//
//  Created by Valentine Miranda on 28/09/23.
//

import Foundation

enum LoginRoute {
    case login
    case signup
    case later
    
    var isLogin: Bool {
        return self == .login
    }
    
    var isSignUp: Bool {
        return self == .signup
    }
    
    var isLater: Bool {
        return self == .later
    }
}

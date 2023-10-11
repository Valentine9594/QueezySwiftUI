//
//  KeyboardManager.swift
//  QuizySwiftUI
//
//  Created by Valentine Miranda on 29/09/23.
//

import SwiftUI
import Combine

extension Publishers {
    static var keyboardHeight: AnyPublisher<CGFloat, Never> {
        Publishers.Merge(
            NotificationCenter.default.publisher(for: UIApplication.keyboardWillShowNotification).map{ $0.keyboardHeight },
            NotificationCenter.default.publisher(for: UIApplication.keyboardWillHideNotification).map{ _ in 0 }
        )
        .eraseToAnyPublisher()
    }
}

extension Notification {
    var keyboardHeight: CGFloat {
        return (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)?.height ?? 0
    }
}

struct AdaptiveKeyboard: ViewModifier {
    @State var keyboardPadding: CGFloat = 0
    
    func body(content: Content) -> some View {
        content
            .padding(.bottom, keyboardPadding)
            .onReceive(Publishers.keyboardHeight) { output in
                keyboardPadding = output
            }
    }
    
}

extension View {
    func keyboardAdaptive() -> some View {
        return ModifiedContent(content: self, modifier: AdaptiveKeyboard())
    }
}

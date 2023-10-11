//
//  AppTabbarView.swift
//  QuizySwiftUI
//
//  Created by Valentine Miranda on 11/10/23.
//

import SwiftUI

struct AppTabbarView: View {
    
    var body: some View {
        
        ZStack(alignment: .center) {
            AppTabbarShape()
                .fill(.indigo)
        }
        
    }
}

struct AppTabbarView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabbarView()
    }
}

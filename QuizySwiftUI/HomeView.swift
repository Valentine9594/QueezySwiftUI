//
//  HomeView.swift
//  QuizySwiftUI
//
//  Created by Valentine Miranda on 29/09/23.
//

import SwiftUI

struct HomeView: View {
    @State var tabSelection: Int = 0
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            TabView(selection: $tabSelection) {
                
                
                
            }
            .toolbarBackground(.hidden, for: .tabBar)
            .toolbar(.hidden, for: .tabBar)
            
            AppTabbarView()
            .frame(height: 50, alignment: .bottom)
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

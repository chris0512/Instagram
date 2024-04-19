//
//  ContentView.swift
//  Instagram
//
//  Created by Chris on 2024/4/13.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
//            if viewModel.userSession == nil {
//                LoginView()
//            } else {
//                MainTabView()
//            }
            MainTabView()
        }
    }
}

#Preview {
    ContentView()
}

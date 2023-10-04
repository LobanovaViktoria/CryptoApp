//
//  ContentView.swift
//  CryptoApp
//
//  Created by Viktoria Lobanova on 28.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
               Text("Accent")
                    .foregroundColor(Color.theme.accent)
                Text("Secondary")
                     .foregroundColor(Color.theme.secondaryText)
                Text("red")
                     .foregroundColor(Color.theme.red)
                Text("green")
                     .foregroundColor(Color.theme.green)
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

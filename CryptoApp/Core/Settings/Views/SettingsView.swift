//
//  SettingsView.swift
//  CryptoApp
//
//  Created by Viktoria Lobanova on 12.10.2023.
//

import SwiftUI

let defaultURL = URL(string: "https://www.google.com")!
let youtubeURL = URL(string: "https://www.youtube.com/c/swiftfulthinking")!
let coffeeURL = URL(string: "https://www.buymeacoffee.com/nicksarno")!
let coingeckoURL = URL(string: "https://www.coingecko.com")!
let personalURL = URL(string: "https://github.com/LobanovaViktoria")!

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            List {
                swiftfulThinkingSection
                coinGeckoSection
                developerSection
                applicationSection
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.headline)
                    })
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    private var swiftfulThinkingSection: some View {
            Section(header: Text("Swiftful Thinking")) {
                VStack(alignment: .leading) {
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Text("This app was made by following a @SwiftfulThinking course on YouTube. It uses MVVM Architecture, Combine, and CoreData.")
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(Color.theme.accent)
                }
                .padding(.vertical)
                Link("Subscribe on YouTube 🎥", destination: youtubeURL)
                Link("Support his coffee addiction ☕️", destination: coffeeURL)
            }
        }
    
    private var coinGeckoSection: some View {
            Section(header: Text("CoinGecko")) {
                VStack(alignment: .leading) {
                    Image("coingecko")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Text("The cryptocurrency data that is used in this app comes from the API from CoinGecko! Prices may be slightly delayed.")
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(Color.theme.accent)
                }
                .padding(.vertical)
                Link("Visit Coingecko", destination: coingeckoURL)
            }
        }
    
    private var developerSection: some View {
            Section(header: Text("Developer")) {
                VStack(alignment: .leading) {
                    Image("Lobanova")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                       
                    Text("This app was developed by Viktoria Lobanova. It uses SwiftUI and is written 100% in Swift. The project benefits from milti-threading, publishers/subscribers, and data persistance.")
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(Color.theme.accent)
                }
                .padding(.vertical)
                Link("Visit GitHub", destination: personalURL)
            }
        }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }
}

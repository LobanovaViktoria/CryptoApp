//
//  DetailViewModel.swift
//  CryptoApp
//
//  Created by Viktoria Lobanova on 11.10.2023.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink { (returnedCoinDetails) in
                print("Recieved coin detail data")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
    }
}

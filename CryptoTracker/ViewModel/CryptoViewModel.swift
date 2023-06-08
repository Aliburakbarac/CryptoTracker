//
//  CryptoViewModel.swift
//  CryptoTracker
//
//  Created by Ali Burak Baraç on 8.06.2023.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurrency]
    
}
extension CryptoListViewModel {
        func numberOfRowsInSection() -> Int{
            return self.cryptoCurrencyList.count
        }
        
        func cryptoAtIndex( index:Int) -> CryptoViewModel{
            let crypto = self.cryptoCurrencyList[index]
            return CryptoViewModel(cryptoCurrency: crypto)
        }
    }
    

struct CryptoViewModel {
    let cryptoCurrency : CryptoCurrency
    

}
extension CryptoViewModel {
    var name : String{
        return self.cryptoCurrency.currency
    }
    
    var price : String{
        return self.cryptoCurrency.price
    }
}

//
//  webService.swift
//  CryptoTracker
//
//  Created by Ali Burak Baraç on 8.06.2023.
//

import Foundation

class webService {
    
    func getCurrencies(url: URL, completion:@escaping ([CryptoCurrency]?) -> ()){
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                
                
                let cryptoList = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
                print(cryptoList)
                completion(cryptoList)
            }
        }.resume()
        
    }
    
}

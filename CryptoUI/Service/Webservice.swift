//
//  Webservice.swift
//  CryptoUI
//
//  Created by Ömer on 4.10.2025.
//

import Foundation

class Webservice {

    func downloadCurrenciesAsync( url : URL ) async throws -> [CryptoCurrency] {
        
        let (data , _ ) = try await URLSession.shared.data(from: url)
        let currencies = try? JSONDecoder().decode([CryptoCurrency].self , from: data)
        return currencies ?? []
    }
    
    
    
    
}


enum DownloadError: Error {
    case badUrl
    case noData
    case dataParseError
}

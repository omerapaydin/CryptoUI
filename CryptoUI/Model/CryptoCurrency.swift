//
//  CryptoCurrency.swift
//  CryptoUI
//
//  Created by Ömer on 4.10.2025.
//

import Foundation

struct CryptoCurrency : Identifiable,Decodable {
    var id = UUID()
    var currency : String
    var price : String
}

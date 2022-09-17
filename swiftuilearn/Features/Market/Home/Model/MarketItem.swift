//
//  MarketItem.swift
//  swiftuilearn
//
//  Created by Ata emir on 17.09.2022.
//

import Foundation

struct MarketItem: Identifiable {
    var id: UUID = UUID()
    let name: String
    var price: Int
    
    mutating func updatePrice(value: Int?) {
        guard let _value = value else { return }
        price = _value
    }
}

extension MarketItem {
    static let items = [
        MarketItem(name: "Patates", price: 3),
        MarketItem(name: "Soğan", price: 2),
        MarketItem(name: "Domates", price: 11)
    ]
}

//
//  Item.swift
//  Splitsy
//
//  Created by Mit Amin on 10/15/22.
//

import Foundation

class Item {
    var itemName: String
    var peopleSharingTheItem: [People]
    var price: Double
    
    
    init(itemName: String, peopleSharingTheItem: [People], price: Double) {
        self.itemName = itemName
        self.peopleSharingTheItem = peopleSharingTheItem
        self.price = price
    }
}

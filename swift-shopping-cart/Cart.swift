//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items: [Item] = []
    
    func totalPriceInCents() -> Int {
        var totalPrice = 0
        for item in items {
            totalPrice += item.priceInCents
        }
        return totalPrice
    }
    
    func add(item: Item) {
        items.append(item)
    }
    
    func remove(item: Item) {
        if let indexToRemove = items.index(of: item) {
            items.remove(at: indexToRemove)
        }
    }
    
    func items(withName name: String) -> [Item] {
        var itemsWithName = [Item]()
        for item in items {
            if item.name == name {
                itemsWithName.append(item)
            }
        }
        return itemsWithName
    }
    
    func items(withMinPrice price: Int) -> [Item] {
        var itemsWithMinPrice = [Item]()
        for item in items {
            if item.priceInCents >= price {
                itemsWithMinPrice.append(item)
            }
        }
        return itemsWithMinPrice
    }
    
    func items(withMaxPrice price: Int) -> [Item] {
        var itemsWithMaxPrice = [Item]()
        for item in items {
            if item.priceInCents <= price {
                itemsWithMaxPrice.append(item)
            }
        }
        return itemsWithMaxPrice
    }
}

//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Adrian Brown  on 8/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart: NSObject {
    
    var items: [Item] = []
    
    
    func totalPriceInCents()-> Int {
        
        var totalPrice = 0
        
        for item in items {
            totalPrice = totalPrice + item.priceInCents
        }
        
        return totalPrice
    
    
    }
    
    func addItem(item: Item){
        items.append(item)
    }
    
    func removeItem(item: Item){
        
        for itemToRemove in items {
            
            let index = items.indexOf(itemToRemove)!
            
            if itemToRemove == item {
                items.removeAtIndex(index)
            }
        }
        
    }
    
    func itemsWithName(itemName: String)-> [Item] {
        var newItems: [Item] = []
        
        for itemToCheck in items {
            
            if itemToCheck.name == itemName {
                newItems.append(itemToCheck)
            }
        }
        return newItems

    }
    
    func itemsWithMinimumPriceInCents(itemPriced: Int)-> [Item] {
        var minPriceInCents: [Item] = []
        
        for item in items {
            
            if item.priceInCents >= itemPriced  {
                minPriceInCents.append(item)
            }
        }
        
        return minPriceInCents
    }
    
    
    func itemsWithMaximumPriceInCents(itemPriced: Int)-> [Item]{
        var maxPriceInCents: [Item] = []
        
        for item in items {
            
            if item.priceInCents <= itemPriced {
                maxPriceInCents.append(item)
            }
            
        }
        
        return maxPriceInCents
    }
    
    
    
    
    
}
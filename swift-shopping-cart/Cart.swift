//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by susan lovaglio on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart{
    
    var items = [Item]()
    
    func totalPriceInCents()-> Int{
        
        var totalPrice = 0
        
        for price in items{
            
            totalPrice += price.priceInCents
        }
        return totalPrice
    }
    
    func addItem(item: Item){
        
        items.append(item)
    }
    
    func removeItem(item: Item){
        
        
        if items.contains(item){
            
            let index = items.indexOf(item)
            items.removeAtIndex(index!)
        }
    }
    
    func itemsWithName(name: String)->[Item]{
        
        var collection = [Item]()
        
        for each in items{
            
            if each.name == name{
                
                collection.append(each)
            }
        }
        return collection
    }
    
    func itemsWithMinimumPriceInCents(min: Int)-> [Item]{
        
        var greaterThanMin = [Item]()
        
        for item in items{
            
            if item.priceInCents >= min{
                
                greaterThanMin.append(item)
            }
        }
        return greaterThanMin
    }
    
    func itemsWithMaximumPriceInCents(max: Int)-> [Item]{
        
        var lessThanMax = [Item]()
        
        for item in items{
            
            if item.priceInCents <= max{
                
                lessThanMax.append(item)
            }
        }
        
        return lessThanMax
    }
    
}













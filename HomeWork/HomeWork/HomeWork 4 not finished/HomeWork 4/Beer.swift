//  Beer.swift
//  HomeWork
//
//  Created by Alexander Yankuliov on 19.05.22.

import Foundation

class Beer {
    
    var nameBeer: String
    var priceBeer: Int
    var countryBeer: String
    var remainderVolBeer: Int
    var total: Int
    
    internal init(nameBeer: String, priceBeer: Int, countryBeer: String, remainderVolBeer: Int, total: Int) {
        self.nameBeer = nameBeer
        self.priceBeer = priceBeer
        self.countryBeer = countryBeer
        self.remainderVolBeer = remainderVolBeer
        self.total = total
        
    }
    
}

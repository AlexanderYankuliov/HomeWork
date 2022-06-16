//  Pub.swift
//  HomeWork
//
//  Created by Alexander Yankuliov on 23.05.22.

import Foundation

class Pub {
    static var singleton = Pub(beer: [])
    
    var beer: [Beer] = []
    
    private init(beer: [Beer]) {
        self.beer = beer
    }
    
    func sellBeer(n: Int) -> [Int] {
        if Pub.singleton.beer[n].remainderVolBeer >= 1 {
            Pub.singleton.beer[n].remainderVolBeer -= 1
            Pub.singleton.beer[n].total += 1
        }
        return beer.map { $0.remainderVolBeer }
    }
    
    
}




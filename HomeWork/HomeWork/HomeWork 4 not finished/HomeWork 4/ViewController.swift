//  ViewController.swift
//  HomeWork
//
//  Created by Alexander Yankuliov on 19.05.22.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label1: UILabel!
    
    @IBOutlet weak var Label2: UILabel!
    
    
    let beer1 = Beer(nameBeer: "Лидское Пшеничное", priceBeer: 5, countryBeer: "Belarus", remainderVolBeer: 50, total: 0)
    let beer2 = Beer(nameBeer: "Вечер в Брюгге", priceBeer: 5, countryBeer: "Belarus", remainderVolBeer: 50, total: 0)

    override func viewDidLoad() {
        super.viewDidLoad()

        Pub.singleton.beer.append(contentsOf: [beer1, beer2])
        
        Label1.text = "\(beer1.nameBeer)\(beer1.priceBeer)\(beer1.countryBeer)"
        
        Label2.text = "\(beer2.nameBeer)\(beer2.priceBeer)\(beer2.countryBeer)"
        
    }
    
    @IBAction func SellBeer1Button(_ sender: UIButton) {
        let index = Pub.singleton.beer.firstIndex(where: { $0.nameBeer == beer1.nameBeer})
        Label1.text = ("\(Pub.singleton.sellBeer(n: index ?? 0))")
    }
    
    @IBAction func SellBeer2Button(_ sender: UIButton) {
        let index = Pub.singleton.beer.firstIndex(where: { $0.nameBeer == beer2.nameBeer})
        Label2.text = ("\(Pub.singleton.sellBeer(n: index ?? 0))")
    }
    
}

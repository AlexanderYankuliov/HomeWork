//
//  SecondViewController.swift
//  HomeWork 8 Navigation controller properties to labels
//
//  Created by Alexander Yankuliov on 10.06.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var variables = forLabels(foundingYear: "", population: "", areaKmSquare: "")
    
    @IBOutlet weak var labelFirst: UILabel!
    @IBOutlet weak var labelSecond: UILabel!
    @IBOutlet weak var labelThird: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelFirst.text = variables.foundingYear
        labelSecond.text = variables.population
        labelThird.text = variables.areaKmSquare
    }
}

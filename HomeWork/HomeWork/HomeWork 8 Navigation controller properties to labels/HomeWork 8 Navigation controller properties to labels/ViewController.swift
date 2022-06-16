//
//  ViewController.swift
//  HomeWork 8 Navigation controller properties to labels
//
//  Created by Alexander Yankuliov on 10.06.22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showLabels(_ sender: UIButton) {
        transferData()
    }
    
    private func transferData() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        viewController.variables = forLabels(foundingYear: "1067", population: "2 000 000", areaKmSquare: "350")
        navigationController?.pushViewController(viewController, animated: true)
    }
}

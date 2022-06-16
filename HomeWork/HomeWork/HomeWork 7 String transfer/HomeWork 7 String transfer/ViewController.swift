//
//  ViewController.swift
//  HomeWork 7
//
//  Created by Alexander Yankuliov on 7.06.22.
//

import UIKit

class ViewController: UIViewController {
    
    private var greeting = "Hello World"
    
    @IBAction func ButtonAction(_ sender: UIButton) {
        buttonToSecondViewController()
    }
    
    private func buttonToSecondViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalTransitionStyle = .flipHorizontal
        viewController.greeting = greeting
        self.present(viewController, animated: true)
    }
    
}


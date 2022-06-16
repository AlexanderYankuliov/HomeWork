//
//  FifthViewController.swift
//  HomeWork 7 String transfer
//
//  Created by Alexander Yankuliov on 7.06.22.
//

import Foundation
import UIKit

class FifthViewController: UIViewController {
    
    var greeting = "Hello World"
    
    private lazy var label = makeLabel()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = UIColor(red: 0.7, green: 0.9, blue: 0.7, alpha: 1)
        
        view.addSubview(label)
        
        let centerHorizontally = NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        let centerVertically = NSLayoutConstraint(item: label, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)

        NSLayoutConstraint.activate([centerHorizontally, centerVertically])
    }
    
    private func makeLabel() -> UILabel {
        let label = UILabel()
        label.font = .systemFont(ofSize: 48)
        label.textColor = .blue
        label.text = "Hello World"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}


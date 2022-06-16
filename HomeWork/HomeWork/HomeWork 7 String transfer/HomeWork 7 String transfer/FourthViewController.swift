//
//  FourthViewController.swift
//  HomeWork 7 String transfer
//
//  Created by Alexander Yankuliov on 7.06.22.
//

import UIKit

class FourthViewController: UIViewController {
    
    var greeting = "Hello World"
    
    private lazy var button = makeButton()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = UIColor(red: 0.5, green: 0.7, blue: 0.5, alpha: 1)
        
        view.addSubview(button)
        
        let centerHorizontally = NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0.0)

        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 30),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            centerHorizontally
        ])
        
        button.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
    }
    
    @objc private func nextVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "FifthViewController") as! FifthViewController
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalTransitionStyle = .flipHorizontal
        viewController.greeting = greeting
        self.present(viewController, animated: true)
    }
    
    private func makeButton() -> UIButton {
        let button = UIButton(frame: CGRect())
        button.backgroundColor = .gray
        button.layer.cornerRadius = 7
        button.setTitle("Tap to fifth ViewController", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}


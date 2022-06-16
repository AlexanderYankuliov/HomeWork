//
//  SecondViewController.swift
//  HomeWork 7 String transfer
//
//  Created by Alexander Yankuliov on 7.06.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var greeting = "Hello World"
    
    private lazy var button = makeButton()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = UIColor(red: 0.1, green: 0.3, blue: 0.1, alpha: 1)
        
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
        let viewController = storyboard.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalTransitionStyle = .flipHorizontal
        viewController.greeting = greeting
        self.present(viewController, animated: true)
    }
    
    private func makeButton() -> UIButton {
        let button = UIButton(frame: CGRect())
        button.backgroundColor = .lightGray
        button.setTitle("Tap to third ViewController", for: .normal)
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    


}

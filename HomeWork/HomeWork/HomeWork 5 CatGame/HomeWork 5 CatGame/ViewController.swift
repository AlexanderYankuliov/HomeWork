//
//  ViewController.swift
//  HomeWork 5
//
//  Created by Alexander Yankuliov on 26.05.22.
//
//
//  Задание:
//
//  Игрушка для котиков - появление разноцветного кружочка, по тапу исчезает и появляется в новом месте (кодом).


import UIKit

class ViewController: UIViewController {
    
    let catGame = UIView()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        catGame.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        catGame.frame.size = CGSize(width: 100, height: 100)
        catGame.center = CGPoint(x: view.frame.midX, y: view.frame.midY)
        catGame.layer.cornerRadius = catGame.frame.width / 2
        view.addSubview(catGame)
        catGame.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(button)))
    }
    
    @objc func button() {
        randomColor()
        randomPlace()
    }
    
    func randomColor() {
        catGame.backgroundColor = UIColor(red: CGFloat.random(in: 0...0.9), green: CGFloat.random(in: 0...0.9), blue: CGFloat.random(in: 0...0.9), alpha: 1)
    }
    
    func randomPlace() {
        catGame.frame = CGRect(x: .random(in: 5...view.frame.maxX - 5 - catGame.frame.width), y: .random(in: 30...view.frame.maxY - 30 - catGame.frame.height), width: catGame.frame.width, height: catGame.frame.height)
    }
}

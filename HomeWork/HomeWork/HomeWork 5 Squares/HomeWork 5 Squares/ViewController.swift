//
//  ViewController.swift
//  HomeWork 5 Squares
//
//  Created by Alexander Yankuliov on 27.05.22.
//
//
//  Задание:
//
//  По нажатию кнопки экран заполняется разноцветными квадратами с фиксированной стороной. Квадраты не пересекаются.
//
//  iPhone 11


import UIKit

class ViewController: UIViewController {
    
    private var square = UIView()
    
    private let side = 50
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        viewSquares()
    }
    
    private func viewSquares() {
        for x in 0...Int(view.frame.maxX / CGFloat(side)) {
            for y in 0...Int(view.frame.maxY / CGFloat(side)) {
                
                let squares = UIView()
                squares.frame = CGRect(x: x * side, y: y * side, width: side, height: side)
                view.addSubview(squares)
                squares.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
                view.bringSubviewToFront(buttonOutlet)
            }
        }
    }
}




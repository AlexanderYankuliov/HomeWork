//
//  ViewController.swift
//  HomeWork 5 Control buttons
//
//  Created by Alexander Yankuliov on 29.05.22.
//
//
//  Задание:
//
//  На экране кружок по центру. Четыре кнопки - вверх, вниз, вправо, влево. При нажатии кнопки кружок перемещается на фиксированное расстояние. За края экрана не выходит, на кнопки не налезает.


import UIKit

class ViewController: UIViewController {
    
    private let circle = UIView()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        circle.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        circle.frame.size = CGSize(width: 100, height: 100)
        circle.center = CGPoint(x: view.frame.midX, y: view.frame.midY)
        circle.layer.cornerRadius = circle.frame.width / 2
        view.addSubview(circle)
    }
    
    @IBAction func upButtonAction(_ sender: UIButton) {
        if circle.frame.minY >= view.frame.minY + 50 {
            circle.frame.origin.y -= 20
        }
    }
    
    @IBAction func rightButtonAction(_ sender: UIButton) {
        if circle.frame.maxX <= view.frame.maxX - 20{
            circle.frame.origin.x += 20
        }
    }
    
    @IBAction func downButtonAction(_ sender: UIButton) {
        if circle.frame.maxY <= view.frame.maxY - 220 {
            circle.frame.origin.y += 20
        }
    }
    
    @IBAction func leftButtonAction(_ sender: UIButton) {
        if circle.frame.minX >= view.frame.minX + 20 {
            circle.frame.origin.x -= 20
        }
    }
    
}


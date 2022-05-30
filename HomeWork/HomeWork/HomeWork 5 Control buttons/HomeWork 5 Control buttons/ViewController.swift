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
    
    let circle = UIView()
    
    
    
    @IBOutlet weak var upButtonOutlet: UIButton!
    
    @IBOutlet weak var rightButtonOutlet: UIButton!
    
    @IBOutlet weak var downButtonOutlet: UIButton!
    
    @IBOutlet weak var leftButtonOutlet: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("iPhone 11 (maxX): \(view.frame.maxX)")
        print("iPhone 11 (maxY): \(view.frame.maxY)")
        
        print("iPhone 11 (midX): \(view.frame.midX)")
        print("iPhone 11 (midY): \(view.frame.midY)")
        
        
        circle.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        circle.frame.size = CGSize(width: 100, height: 100)
        circle.center = CGPoint(x: view.frame.midX, y: view.frame.midY)
        circle.layer.cornerRadius = circle.frame.width / 2
        view.addSubview(circle)
    }
    
    @IBAction func upButtonAction(_ sender: UIButton) {
        up()
    }
    
    func up() {
        circle.frame.origin = CGPoint(x: 207 - circle.frame.width / 2, y: 348 - circle.frame.height / 2)
    }
    
    @IBAction func rightButtonAction(_ sender: UIButton) {
        right()
    }
    
    func right() {
        circle.frame.origin = CGPoint(x: 307 - circle.frame.width / 2, y: 448 - circle.frame.height / 2)
    }
    
    @IBAction func downButtonAction(_ sender: UIButton) {
        down()
    }
    
    func down() {
        circle.frame.origin = CGPoint(x: 207 - circle.frame.width / 2, y: 548 - circle.frame.height / 2)
    }
    
    @IBAction func leftButtonAction(_ sender: UIButton) {
        left()
    }
    
    func left() {
        circle.frame.origin = CGPoint(x: 107 - circle.frame.width / 2, y: 448 - circle.frame.height / 2)
    }
    
}


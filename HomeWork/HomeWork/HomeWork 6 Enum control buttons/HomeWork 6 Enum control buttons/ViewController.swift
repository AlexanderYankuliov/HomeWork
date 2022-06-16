//
//  ViewController.swift
//  HomeWork 6 Enum control buttons
//
//  Created by Alexander Yankuliov on 1.06.22.
//
//
//  Задание:
//
//  Сделать перемещение кружочка через enum, кружок не касается стен, при невозможности перемещения в label сообщение об ошибке, при перемещении в label направление перемещения



import UIKit

class ViewController: UIViewController {
    
    private let circle = UIView()
    
    private enum controlButtons {
        case up
        case right
        case down
        case left
    }
    
    @IBOutlet weak var upButtonOutlet: UIButton!
    
    @IBOutlet weak var rightButtonOutlet: UIButton!
    
    @IBOutlet weak var downButtonOutlet: UIButton!
    
    @IBOutlet weak var leftButtonOutlet: UIButton!
    
    @IBOutlet weak var stateButtonOutlet: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        circle.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        circle.frame.size = CGSize(width: 100, height: 100)
        circle.center = CGPoint(x: view.frame.midX, y: view.frame.midY)
        circle.layer.cornerRadius = circle.frame.width / 2
        view.addSubview(circle)
    }
    
    @IBAction func upButtonAction(_ sender: UIButton) {
        choiceControlButtonCase(controlButtonCase: .up)
    }
        
    @IBAction func rightButtonAction(_ sender: UIButton) {
        choiceControlButtonCase(controlButtonCase: .right)
    }
    
    @IBAction func downButtonAction(_ sender: UIButton) {
        choiceControlButtonCase(controlButtonCase: .down)
    }
    
    @IBAction func leftButtonAction(_ sender: UIButton) {
        choiceControlButtonCase(controlButtonCase: .left)
    }
    
       private func choiceControlButtonCase(controlButtonCase: controlButtons){
            switch controlButtonCase {
            
            case .up:
                if circle.frame.minY >= view.frame.minY + 60 {
                    circle.center.y -= 20
                    stateButtonOutlet.text = "UP"
                } else {
                    stateButtonOutlet.text = "ERROR"
                }
                
            case .right:
                if circle.frame.maxX <= view.frame.maxX - 20 {
                        circle.frame.origin.x += 20
                    stateButtonOutlet.text = "RIGHT"
                } else {
                    stateButtonOutlet.text = "ERROR"
                }
                
            case .down:
                if circle.frame.maxY <= view.frame.maxY - 220 {
                    circle.frame.origin.y += 20
                    stateButtonOutlet.text = "DOWN"
                } else {
                    stateButtonOutlet.text = "ERROR"
                }
                
            case .left:
                if circle.frame.minX >= view.frame.minX + 20 {
                    circle.frame.origin.x -= 20
                    stateButtonOutlet.text = "LEFT"
                } else {
                    stateButtonOutlet.text = "ERROR"
                }
            }
        }

    }


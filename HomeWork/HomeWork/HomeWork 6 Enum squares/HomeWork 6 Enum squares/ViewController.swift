//
//  ViewController.swift
//  HomeWork 6 Enum squares
//
//  Created by Alexander Yankuliov on 3.06.22.
//
//
//  Задание:
//
//  Задать сторону квадрата, по нажатию кнопки заполнить экран разноцветными квадратами с указанной стороной (в центре каждого квадрата label с названием цвета)
//
//  iPhone 11


import UIKit

class ViewController: UIViewController {
    
    private enum myColorsEnum: String, CaseIterable {
        case red = "red"
        case green = "green"
        case blue = "blue"
        case yellow = "yellow"
        case cyan = "cyan"
        case brown = "brown"
        case gray = "gray"
        case white = "white"
        case orange = "orange"
        case purple = "purple"
        
        var myColorsSwitchCase: UIColor {
            switch self {
            case .red:
                return .red
            case .green:
                return .green
            case .blue:
                return .blue
            case .yellow:
                return .yellow
            case .cyan:
                return .cyan
            case .brown:
                return .brown
            case .gray:
                return .gray
            case .white:
                return .white
            case.orange:
                return .orange
            case .purple:
                return .purple
            }
        }
    }
    
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
                
                let randomMyColors = myColorsEnum.allCases.randomElement()!
                
                let squaresLabel = UILabel()
                squaresLabel.frame = CGRect(x: x * side, y: y * side, width: side, height: side)
                squaresLabel.backgroundColor = randomMyColors.myColorsSwitchCase
                squaresLabel.textAlignment = .center
                squaresLabel.textColor = .black
                squaresLabel.font = squaresLabel.font.withSize(15)
                squaresLabel.text = randomMyColors.rawValue
                view.addSubview(squaresLabel)
                view.bringSubviewToFront(buttonOutlet)
            }
        }
    }
}


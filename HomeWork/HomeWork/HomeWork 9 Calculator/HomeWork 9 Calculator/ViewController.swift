//
//  ViewController.swift
//  HomeWork 9 Calculator
//
//  Created by Alexander Yankuliov on 16.06.22.
//
//  Задание:
//
//  Калькулятор, стиль Эппла. Упор на интерфейс, желательная основная функциональность.
//
//  iPhone 11


import UIKit

class ViewController: UIViewController {
    
    var numberFromScreen:Double = 0
    var firstNumber:Double = 0
    var operation:Int = 0
    var mathSign:Bool = false
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        } else {
            result.text = result.text! + String(sender.tag)
        }

        numberFromScreen = Double(result.text!)!
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if result.text != "" && sender.tag != 10 && sender.tag != 17 {
            firstNumber = Double(result.text!)!
            
            if sender.tag == 11 { // Положительное или отрицательное значение
            }
            
            else if sender.tag == 12 { // Процент
            }
            
            else if sender.tag == 13 { // Деление
            }
            
            else if sender.tag == 14 { // Умножение
            }
            
            else if sender.tag == 15 { // Минус
            }
            
            else if sender.tag == 16 { // Плюс
            }
            
            else if sender.tag == 18 { // Запятая
            }
            
            operation = sender.tag
            mathSign = true
        }
        
        else if sender.tag == 17 { // Подсчет
            
            if operation == 13 {
                result.text = String(firstNumber / numberFromScreen)
            }
            
            else if operation == 14 {
                result.text = String(firstNumber * numberFromScreen)
            }
            
            else if operation == 15 {
                result.text = String(firstNumber - numberFromScreen)
            }
            
            else if operation == 16 {
                result.text = String(firstNumber + numberFromScreen)
            }
            
        }
        
        else if sender.tag == 10 {
            result.text = ""
            firstNumber = 0
            numberFromScreen = 0
            operation = 0
        }
    }
    
}



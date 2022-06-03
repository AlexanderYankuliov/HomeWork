//  ViewController.swift
//  HomeWork

//  Created by Alexander Yankuliov on 10.05.22.

/*
 Это моя первая попытка сделать ДЗ №1, удачно вывелась в консоль первая часть задания,
 даже получилось убрать лишние знаки после точки, хоть этого и требовалось, но далее
 возникли проблемы со второй частью задания - значения floor не захотели дружить с
 условиями для выявления четных и нечетных чисел.
 Хотелось бы узнать в чем тут ошибка.
 */

//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//
//        let numberA = 2.5
//        let integerA = floor(numberA)
//        let decimalA = numberA.truncatingRemainder(dividingBy: 1)
//
//        let numberB = 9.7
//        let integerB = floor(numberB)
//        let decimalB = numberB.truncatingRemainder(dividingBy: 1)
//
//        let numberC = 6.9
//        let integerC = floor(numberC)
//        let decimalC = numberC.truncatingRemainder(dividingBy: 1)
//
//        let numberD = 8.2
//        let integerD = floor(numberD)
//        let decimalD = numberD.truncatingRemainder(dividingBy: 1)
//
//        let sumIntABCD = integerA + integerB + integerC + integerD
//        let sumDecABCD = decimalA + decimalB + decimalC + decimalD
//
//        print(sumIntABCD)
//        print(sumDecABCD)
//
//        print(String(format: "%.0f", sumIntABCD))
//        print(String(format: "%.1f", sumDecABCD))
//
//        if integerA % 2 == 0 {
//            print("\(integerA) is even number")
//        } else {
//            print("\(integerA) is odd number")
//
//        }
//
//        if integerB % 2 == 0 {
//            print("\(integerB) is even number")
//        } else {
//            print("\(integerB) is odd number")
//
//        }
//
//        if integerC % 2 == 0 {
//            print("\(integerC) is even number")
//        } else {
//            print("\(integerC) is odd number")
//
//        }
//
//        if integerD % 2 == 0 {
//            print("\(integerD) is even number")
//        } else {
//            print("\(integerD) is odd number")
//
//        }
//
//
//    }
//
//}



//  ViewController.swift
//  HomeWork

//  Created by Alexander Yankuliov on 10.05.22.

/*
 Это вторая попытка.
 Решил изменить способ выведения целой части числа и это помогло! УРА!
 Но после этого перестало работать сокращение знаков после запятой для числа 25.0 (показывало 0),
 хотя 2.3 по прежнему выводило правильно, понимаю что это не нужно, но интересно почему так
 
 Комментарии в коде я делал для себя, чтобы не сойти с ума.
 */

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let numberA = 2.5
        let integerA: Int = Int(trunc(numberA))
        //Целая часть числа
        let decimalA = numberA.truncatingRemainder(dividingBy: 1)
        //Дробная часть числа
        
        let numberB = 9.7
        let integerB: Int = Int(trunc(numberB))
        let decimalB = numberB.truncatingRemainder(dividingBy: 1)
        
        let numberC = 6.9
        let integerC: Int = Int(trunc(numberC))
        let decimalC = numberC.truncatingRemainder(dividingBy: 1)
        
        let numberD = 8.2
        let integerD: Int = Int(trunc(numberD))
        let decimalD = numberD.truncatingRemainder(dividingBy: 1)
        
        let sumIntABCD = integerA + integerB + integerC + integerD
        //Сумма целых частей числа
        let sumDecABCD = decimalA + decimalB + decimalC + decimalD
        //Сумма дробных частей числа
        
        print(sumIntABCD)
        //Вывод в консоль суммы целых чисел
        print(sumDecABCD)
        //Вывод в консоль суммы дробных чисел
        
        if integerA % 2 == 0 {
            print("\(integerA) is even number")
        } else {
            print("\(integerA) is odd number")
            
        }
        //Оператор проверки числа на четность (even) и нечетность (odd) с выводом в консоль
        
        if integerB % 2 == 0 {
            print("\(integerB) is even number")
        } else {
            print("\(integerB) is odd number")
            
        }
        
        if integerC % 2 == 0 {
            print("\(integerC) is even number")
        } else {
            print("\(integerC) is odd number")
            
        }
        
        if integerD % 2 == 0 {
            print("\(integerD) is even number")
        } else {
            print("\(integerD) is odd number")
            
        }
        
        
    }
    
}




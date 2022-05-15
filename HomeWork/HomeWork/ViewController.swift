//  ViewController.swift
//  HomeWork
//
//  Created by Alexander Yankuliov on 15.05.22.

/*
 
 */

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Первое задание
        // Перегрузка функции сложения
        firstTask.addition(1, 3)
        firstTask.addition(1.2, 3.4)
        
        // Прегрузка функции вычитания
        firstTask.subtraction(1, 3)
        firstTask.subtraction(1.2, 3.4)
        
        // Перегрузка функции умножения
        firstTask.multiplication(1, 3)
        firstTask.multiplication(1.2, 3.4)
        
        // Прегрузка функции деления
        firstTask.division(1, 3)
        firstTask.division(1.2, 3.4)
        
        // Второе задание
        // Вычисление суммы цифр четырехзначного числа
        secondTask.sumOfNumbers(1234)
        
        // Третье задание
        // Функция сравнения строк
        thirdTask.equal("авб", "ввш")
        
        // Пятое задание
        // Функция возведения во вторую степень числа
        fifthTask.squared(23)
        
        // Шестое задание
        // Функция вычисления факториала числа
        sixthTask.factorial(9)
    }
    
}


// Первое задание

class firstTask {
    
    static func addition(_ x: Int, _ y : Int) {
        print(x + y)
    }
    static func addition(_ x: Double, _ y: Double) {
        print(x + y)
    }
    static func subtraction(_ x: Int, _ y : Int) {
        print(x - y)
    }
    static func subtraction(_ x: Double, _ y: Double) {
        print(x - y)
    }
    static func multiplication(_ x: Int, _ y : Int) {
        print(x * y)
    }
    static func multiplication(_ x: Double, _ y: Double) {
        print(x * y)
    }
    static func division(_ x: Int, _ y : Int) {
        print(x / y)
    }
    static func division(_ x: Double, _ y: Double) {
        print(x / y)
    }
    
    //    В консоль вывелось:
    //
    //    4
    //    4.6
    //    -2
    //    -2.2
    //    3
    //    4.08
    //    0
    //    0.35294117647058826
    
}


// Второе задание

class secondTask {
    
    static func sumOfNumbers(_ number: Int) {
        
        var sum = 0
        let str = String(number)
        for n in str {
            sum += Int(String(n)) ?? 0
        }
        print("Сумма цифр числа \(number) равняется: \(sum)")
    }
    
    // В консоль вывелось: Сумма цифр числа 1234 равняется: 10
    
}


// Третье задание

class thirdTask {
    
    static func equal(_ x: String,_ y: String) {
        if x > y {
            print(x + " > " + y)
        } else if y > x {
            print(y + " > " + x)
        } else {
            print(x + " = " + y)
        }
    }
    
    // В консоль вывелось: ввш > авб
    
}


// Пятое задание

class fifthTask {
    
    static func squared(_ x: Int, y: Double = 2) {
        let intPow = Int(pow(Double(x), y))
        let intY = Int(y)
        print("\(x) ^ \(intY) = \(intPow)")
    }
    
    // В консоль вывелось: 23 ^ 2 = 529
    
}


// Шестое задание

class sixthTask {
    
    static func factorial(_ n: Int) {
        var factorial = 1
        for number in 1...n {
            factorial = factorial * number
        }
        print("Факториал числа \(n) равняется: \(factorial)")
    }
    
    // В консоль вывелось: Факториал числа 9 равняется: 362880
    
}

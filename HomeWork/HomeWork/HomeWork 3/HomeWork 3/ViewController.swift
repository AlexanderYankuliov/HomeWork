//  ViewController.swift
//  HomeWork
//
//  Created by Alexander Yankuliov on 18.05.22.

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        ● Массив из кортежей - возвести Int в квадрат.
        //        ● Отфильтровать только четные Int.
        //        ● Упорядочить по строкам по возрастанию.
        
        let x = [(1,"x"), (4, "y"), (6, "a"), (-3, "b")]
        let xTask = x.map{ (Int(pow(Double($0.0), 2)), $0.1) }.filter{ $0.0 % 2 == 0 }.sorted{ $0.1 < $1.1 }
        print(xTask)
        
        // В консоль вывелось: [(36, "a"), (16, "y")]
        
    }
}


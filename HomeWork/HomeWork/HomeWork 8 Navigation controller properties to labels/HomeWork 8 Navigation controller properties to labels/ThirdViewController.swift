//
//  ThirdViewController.swift
//  HomeWork 8 Navigation controller properties to labels
//
//  Created by Alexander Yankuliov on 10.06.22.
//

class forLabels {
    
    var foundingYear, population, areaKmSquare: String
    
    init(foundingYear: String, population: String, areaKmSquare: String) {
        self.foundingYear = "Год основания " + foundingYear
        self.population = "Количество населения " + population
        self.areaKmSquare = "Площадь в кадратных километрах " + areaKmSquare
    }
}

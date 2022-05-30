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
//
//  Сделал не гибко, но задачу решил


import UIKit

class ViewController: UIViewController {
    
    var square1 = UIView(); var square2 = UIView(); var square3 = UIView(); var square4 = UIView(); var square5 = UIView(); var square6 = UIView();var square7 = UIView(); var square8 = UIView(); var square9 = UIView(); var square10 = UIView(); var square11 = UIView(); var square12 = UIView(); var square13 = UIView(); var square14 = UIView(); var square15 = UIView(); var square16 = UIView(); var square17 = UIView(); var square18 = UIView(); var square19 = UIView(); var square20 = UIView(); var square21 = UIView(); var square22 = UIView(); var square23 = UIView(); var square24 = UIView(); var square25 = UIView(); var square26 = UIView(); var square27 = UIView(); var square28 = UIView(); var square29 = UIView(); var square30 = UIView(); var square31 = UIView(); var square32 = UIView(); var square33 = UIView(); var square34 = UIView(); var square35 = UIView(); var square36 = UIView(); var square37 = UIView(); var square38 = UIView(); var square39 = UIView(); var square40 = UIView(); var square41 = UIView(); var square42 = UIView(); var square43 = UIView(); var square44 = UIView(); var square45 = UIView(); var square46 = UIView(); var square47 = UIView(); var square48 = UIView(); var square49 = UIView(); var square50 = UIView(); var square51 = UIView(); var square52 = UIView(); var square53 = UIView(); var square54 = UIView(); var square55 = UIView(); var square56 = UIView(); var square57 = UIView(); var square58 = UIView(); var square59 = UIView(); var square60 = UIView(); var square61 = UIView(); var square62 = UIView(); var square63 = UIView(); var square64 = UIView(); var square65 = UIView(); var square66 = UIView(); var square67 = UIView(); var square68 = UIView(); var square69 = UIView(); var square70 = UIView(); var square71 = UIView(); var square72 = UIView(); var square73 = UIView(); var square74 = UIView(); var square75 = UIView(); var square76 = UIView(); var square77 = UIView(); var square78 = UIView();var square79 = UIView(); var square80 = UIView(); var square81 = UIView(); var square82 = UIView(); var square83 = UIView(); var square84 = UIView(); var square85 = UIView(); var square86 = UIView(); var square87 = UIView(); var square88 = UIView(); var square89 = UIView(); var square90 = UIView(); var square91 = UIView(); var square92 = UIView(); var square93 = UIView(); var square94 = UIView(); var square95 = UIView(); var square96 = UIView(); var square97 = UIView(); var square98 = UIView(); var square99 = UIView(); var square100 = UIView(); var square101 = UIView(); var square102 = UIView(); var square103 = UIView(); var square104 = UIView(); var square105 = UIView(); var square106 = UIView(); var square107 = UIView(); var square108 = UIView(); var square109 = UIView(); var square110 = UIView(); var square111 = UIView(); var square112 = UIView(); var square113 = UIView(); var square114 = UIView(); var square115 = UIView(); var square116 = UIView(); var square117 = UIView(); var square118 = UIView(); var square119 = UIView(); var square120 = UIView(); var square121 = UIView(); var square122 = UIView(); var square123 = UIView(); var square124 = UIView(); var square125 = UIView(); var square126 = UIView(); var square127 = UIView(); var square128 = UIView(); var square129 = UIView(); var square130 = UIView(); var square131 = UIView(); var square132 = UIView(); var square133 = UIView(); var square134 = UIView(); var square135 = UIView(); var square136 = UIView(); var square137 = UIView(); var square138 = UIView(); var square139 = UIView(); var square140 = UIView(); var square141 = UIView(); var square142 = UIView(); var square143 = UIView(); var square144 = UIView();
    
    let side = 50
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        square1.frame.size = CGSize(width: side, height: side)
        square2.frame.size = CGSize(width: side, height: side)
        square3.frame.size = CGSize(width: side, height: side)
        square4.frame.size = CGSize(width: side, height: side)
        square5.frame.size = CGSize(width: side, height: side)
        square6.frame.size = CGSize(width: side, height: side)
        square7.frame.size = CGSize(width: side, height: side)
        square8.frame.size = CGSize(width: side, height: side)
        square9.frame.size = CGSize(width: side, height: side)
        square10.frame.size = CGSize(width: side, height: side)
        square11.frame.size = CGSize(width: side, height: side)
        square12.frame.size = CGSize(width: side, height: side)
        square13.frame.size = CGSize(width: side, height: side)
        square14.frame.size = CGSize(width: side, height: side)
        square15.frame.size = CGSize(width: side, height: side)
        square16.frame.size = CGSize(width: side, height: side)
        square17.frame.size = CGSize(width: side, height: side)
        square18.frame.size = CGSize(width: side, height: side)
        square19.frame.size = CGSize(width: side, height: side)
        square20.frame.size = CGSize(width: side, height: side)
        square21.frame.size = CGSize(width: side, height: side)
        square22.frame.size = CGSize(width: side, height: side)
        square23.frame.size = CGSize(width: side, height: side)
        square24.frame.size = CGSize(width: side, height: side)
        square25.frame.size = CGSize(width: side, height: side)
        square26.frame.size = CGSize(width: side, height: side)
        square27.frame.size = CGSize(width: side, height: side)
        square28.frame.size = CGSize(width: side, height: side)
        square29.frame.size = CGSize(width: side, height: side)
        square30.frame.size = CGSize(width: side, height: side)
        square31.frame.size = CGSize(width: side, height: side)
        square32.frame.size = CGSize(width: side, height: side)
        square33.frame.size = CGSize(width: side, height: side)
        square34.frame.size = CGSize(width: side, height: side)
        square35.frame.size = CGSize(width: side, height: side)
        square36.frame.size = CGSize(width: side, height: side)
        square37.frame.size = CGSize(width: side, height: side)
        square38.frame.size = CGSize(width: side, height: side)
        square39.frame.size = CGSize(width: side, height: side)
        square40.frame.size = CGSize(width: side, height: side)
        square41.frame.size = CGSize(width: side, height: side)
        square42.frame.size = CGSize(width: side, height: side)
        square43.frame.size = CGSize(width: side, height: side)
        square44.frame.size = CGSize(width: side, height: side)
        square45.frame.size = CGSize(width: side, height: side)
        square46.frame.size = CGSize(width: side, height: side)
        square47.frame.size = CGSize(width: side, height: side)
        square48.frame.size = CGSize(width: side, height: side)
        square49.frame.size = CGSize(width: side, height: side)
        square50.frame.size = CGSize(width: side, height: side)
        square51.frame.size = CGSize(width: side, height: side)
        square52.frame.size = CGSize(width: side, height: side)
        square53.frame.size = CGSize(width: side, height: side)
        square54.frame.size = CGSize(width: side, height: side)
        square55.frame.size = CGSize(width: side, height: side)
        square56.frame.size = CGSize(width: side, height: side)
        square57.frame.size = CGSize(width: side, height: side)
        square58.frame.size = CGSize(width: side, height: side)
        square59.frame.size = CGSize(width: side, height: side)
        square60.frame.size = CGSize(width: side, height: side)
        square61.frame.size = CGSize(width: side, height: side)
        square62.frame.size = CGSize(width: side, height: side)
        square63.frame.size = CGSize(width: side, height: side)
        square64.frame.size = CGSize(width: side, height: side)
        square65.frame.size = CGSize(width: side, height: side)
        square66.frame.size = CGSize(width: side, height: side)
        square67.frame.size = CGSize(width: side, height: side)
        square68.frame.size = CGSize(width: side, height: side)
        square69.frame.size = CGSize(width: side, height: side)
        square70.frame.size = CGSize(width: side, height: side)
        square71.frame.size = CGSize(width: side, height: side)
        square72.frame.size = CGSize(width: side, height: side)
        square73.frame.size = CGSize(width: side, height: side)
        square74.frame.size = CGSize(width: side, height: side)
        square75.frame.size = CGSize(width: side, height: side)
        square76.frame.size = CGSize(width: side, height: side)
        square77.frame.size = CGSize(width: side, height: side)
        square78.frame.size = CGSize(width: side, height: side)
        square79.frame.size = CGSize(width: side, height: side)
        square80.frame.size = CGSize(width: side, height: side)
        square81.frame.size = CGSize(width: side, height: side)
        square82.frame.size = CGSize(width: side, height: side)
        square83.frame.size = CGSize(width: side, height: side)
        square84.frame.size = CGSize(width: side, height: side)
        square85.frame.size = CGSize(width: side, height: side)
        square86.frame.size = CGSize(width: side, height: side)
        square87.frame.size = CGSize(width: side, height: side)
        square88.frame.size = CGSize(width: side, height: side)
        square89.frame.size = CGSize(width: side, height: side)
        square90.frame.size = CGSize(width: side, height: side)
        square91.frame.size = CGSize(width: side, height: side)
        square92.frame.size = CGSize(width: side, height: side)
        square93.frame.size = CGSize(width: side, height: side)
        square94.frame.size = CGSize(width: side, height: side)
        square95.frame.size = CGSize(width: side, height: side)
        square96.frame.size = CGSize(width: side, height: side)
        square97.frame.size = CGSize(width: side, height: side)
        square98.frame.size = CGSize(width: side, height: side)
        square99.frame.size = CGSize(width: side, height: side)
        square100.frame.size = CGSize(width: side, height: side)
        square101.frame.size = CGSize(width: side, height: side)
        square102.frame.size = CGSize(width: side, height: side)
        square103.frame.size = CGSize(width: side, height: side)
        square104.frame.size = CGSize(width: side, height: side)
        square105.frame.size = CGSize(width: side, height: side)
        square106.frame.size = CGSize(width: side, height: side)
        square107.frame.size = CGSize(width: side, height: side)
        square108.frame.size = CGSize(width: side, height: side)
        square109.frame.size = CGSize(width: side, height: side)
        square110.frame.size = CGSize(width: side, height: side)
        square111.frame.size = CGSize(width: side, height: side)
        square112.frame.size = CGSize(width: side, height: side)
        square113.frame.size = CGSize(width: side, height: side)
        square114.frame.size = CGSize(width: side, height: side)
        square115.frame.size = CGSize(width: side, height: side)
        square116.frame.size = CGSize(width: side, height: side)
        square117.frame.size = CGSize(width: side, height: side)
        square118.frame.size = CGSize(width: side, height: side)
        square119.frame.size = CGSize(width: side, height: side)
        square120.frame.size = CGSize(width: side, height: side)
        square121.frame.size = CGSize(width: side, height: side)
        square122.frame.size = CGSize(width: side, height: side)
        square123.frame.size = CGSize(width: side, height: side)
        square124.frame.size = CGSize(width: side, height: side)
        square125.frame.size = CGSize(width: side, height: side)
        square126.frame.size = CGSize(width: side, height: side)
        square127.frame.size = CGSize(width: side, height: side)
        square128.frame.size = CGSize(width: side, height: side)
        square129.frame.size = CGSize(width: side, height: side)
        square130.frame.size = CGSize(width: side, height: side)
        square131.frame.size = CGSize(width: side, height: side)
        square132.frame.size = CGSize(width: side, height: side)
        square133.frame.size = CGSize(width: side, height: side)
        square134.frame.size = CGSize(width: side, height: side)
        square135.frame.size = CGSize(width: side, height: side)
        square136.frame.size = CGSize(width: side, height: side)
        square137.frame.size = CGSize(width: side, height: side)
        square138.frame.size = CGSize(width: side, height: side)
        square139.frame.size = CGSize(width: side, height: side)
        square140.frame.size = CGSize(width: side, height: side)
        square141.frame.size = CGSize(width: side, height: side)
        square142.frame.size = CGSize(width: side, height: side)
        square143.frame.size = CGSize(width: side, height: side)
        square144.frame.size = CGSize(width: side, height: side)

        
        square1.frame.origin = CGPoint(x: view.frame.minX, y: view.frame.minY)
        view.addSubview(square1)

        square2.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square1.frame.origin.y)
        view.addSubview(square2)
        
        square3.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square1.frame.origin.y)
        view.addSubview(square3)
        
        square4.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square1.frame.origin.y)
        view.addSubview(square4)
        
        square5.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square1.frame.origin.y)
        view.addSubview(square5)
        
        square6.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square1.frame.origin.y)
        view.addSubview(square6)
        
        square7.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square1.frame.origin.y)
        view.addSubview(square7)
        
        square8.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square1.frame.origin.y)
        view.addSubview(square8)
        
        square9.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square1.frame.origin.y)
        view.addSubview(square9)
        
        square10.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width)
        view.addSubview(square10)
        
        square11.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square10.frame.origin.y)
        view.addSubview(square11)
        
        square12.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square10.frame.origin.y)
        view.addSubview(square12)
        
        square13.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square10.frame.origin.y)
        view.addSubview(square13)
        
        square14.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square10.frame.origin.y)
        view.addSubview(square14)
        
        square15.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square10.frame.origin.y)
        view.addSubview(square15)
        
        square16.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square10.frame.origin.y)
        view.addSubview(square16)
        
        square17.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square10.frame.origin.y)
        view.addSubview(square17)
        
        square18.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square10.frame.origin.y)
        view.addSubview(square18)
        
        square19.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 2)
        view.addSubview(square19)
        
        square20.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square19.frame.origin.y)
        view.addSubview(square20)
        
        square21.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square19.frame.origin.y)
        view.addSubview(square21)
        
        square22.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square19.frame.origin.y)
        view.addSubview(square22)
        
        square23.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square19.frame.origin.y)
        view.addSubview(square23)
        
        square24.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square19.frame.origin.y)
        view.addSubview(square24)
        
        square25.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square19.frame.origin.y)
        view.addSubview(square25)
        
        square26.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square19.frame.origin.y)
        view.addSubview(square26)
        
        square27.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square19.frame.origin.y)
        view.addSubview(square27)
        
        square28.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 3)
        view.addSubview(square28)
        
        square29.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square28.frame.origin.y)
        view.addSubview(square29)
        
        square30.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square28.frame.origin.y)
        view.addSubview(square30)
        
        square31.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square28.frame.origin.y)
        view.addSubview(square31)
        
        square32.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square28.frame.origin.y)
        view.addSubview(square32)
        
        square33.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square28.frame.origin.y)
        view.addSubview(square33)
        
        square34.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square28.frame.origin.y)
        view.addSubview(square34)
        
        square35.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square28.frame.origin.y)
        view.addSubview(square35)
        
        square36.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square28.frame.origin.y)
        view.addSubview(square36)
        
        square37.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 4)
        view.addSubview(square37)
        
        square38.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square37.frame.origin.y)
        view.addSubview(square38)
        
        square39.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square37.frame.origin.y)
        view.addSubview(square39)
        
        square40.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square37.frame.origin.y)
        view.addSubview(square40)
        
        square41.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square37.frame.origin.y)
        view.addSubview(square41)
        
        square42.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square37.frame.origin.y)
        view.addSubview(square42)
        
        square43.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square37.frame.origin.y)
        view.addSubview(square43)
        
        square44.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square37.frame.origin.y)
        view.addSubview(square44)
        
        square45.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square37.frame.origin.y)
        view.addSubview(square45)
        
        square46.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 5)
        view.addSubview(square46)
        
        square47.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square46.frame.origin.y)
        view.addSubview(square47)
        
        square48.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square46.frame.origin.y)
        view.addSubview(square48)
        
        square49.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square46.frame.origin.y)
        view.addSubview(square49)
        
        square50.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square46.frame.origin.y)
        view.addSubview(square50)
        
        square51.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square46.frame.origin.y)
        view.addSubview(square51)
        
        square52.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square46.frame.origin.y)
        view.addSubview(square52)
        
        square53.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square46.frame.origin.y)
        view.addSubview(square53)
        
        square54.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square46.frame.origin.y)
        view.addSubview(square54)
        
        square55.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 6)
        view.addSubview(square55)
        
        square56.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square55.frame.origin.y)
        view.addSubview(square56)
        
        square57.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square55.frame.origin.y)
        view.addSubview(square57)
        
        square58.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square55.frame.origin.y)
        view.addSubview(square58)
        
        square59.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square55.frame.origin.y)
        view.addSubview(square59)
        
        square60.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square55.frame.origin.y)
        view.addSubview(square60)
        
        square61.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square55.frame.origin.y)
        view.addSubview(square61)
        
        square62.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square55.frame.origin.y)
        view.addSubview(square62)
        
        square63.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square55.frame.origin.y)
        view.addSubview(square63)
        
        square64.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 7)
        view.addSubview(square64)
        
        square65.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square64.frame.origin.y)
        view.addSubview(square65)
        
        square66.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square64.frame.origin.y)
        view.addSubview(square66)
        
        square67.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square64.frame.origin.y)
        view.addSubview(square67)
        
        square68.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square64.frame.origin.y)
        view.addSubview(square68)
        
        square69.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square64.frame.origin.y)
        view.addSubview(square69)
        
        square70.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square64.frame.origin.y)
        view.addSubview(square70)
        
        square71.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square64.frame.origin.y)
        view.addSubview(square71)
        
        square72.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square64.frame.origin.y)
        view.addSubview(square72)
        
        square73.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 8)
        view.addSubview(square73)
        
        square74.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square73.frame.origin.y)
        view.addSubview(square74)
        
        square75.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square73.frame.origin.y)
        view.addSubview(square75)
        
        square76.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square73.frame.origin.y)
        view.addSubview(square76)
        
        square77.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square73.frame.origin.y)
        view.addSubview(square77)
        
        square78.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square73.frame.origin.y)
        view.addSubview(square78)
        
        square79.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square73.frame.origin.y)
        view.addSubview(square79)
        
        square80.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square73.frame.origin.y)
        view.addSubview(square80)
        
        square81.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square73.frame.origin.y)
        view.addSubview(square81)
        
        square82.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 9)
        view.addSubview(square82)
        
        square83.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square82.frame.origin.y)
        view.addSubview(square83)
        
        square84.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square82.frame.origin.y)
        view.addSubview(square84)
        
        square85.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square82.frame.origin.y)
        view.addSubview(square85)
        
        square86.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square82.frame.origin.y)
        view.addSubview(square86)
        
        square87.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square82.frame.origin.y)
        view.addSubview(square87)
        
        square88.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square82.frame.origin.y)
        view.addSubview(square88)
        
        square89.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square82.frame.origin.y)
        view.addSubview(square89)
        
        square90.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square82.frame.origin.y)
        view.addSubview(square90)
        
        square91.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 10)
        view.addSubview(square91)
        
        square92.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square91.frame.origin.y)
        view.addSubview(square92)
        
        square93.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square91.frame.origin.y)
        view.addSubview(square93)
        
        square94.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square91.frame.origin.y)
        view.addSubview(square94)
        
        square95.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square91.frame.origin.y)
        view.addSubview(square95)
        
        square96.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square91.frame.origin.y)
        view.addSubview(square96)
        
        square97.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square91.frame.origin.y)
        view.addSubview(square97)
        
        square98.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square91.frame.origin.y)
        view.addSubview(square98)
        
        square99.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square91.frame.origin.y)
        view.addSubview(square99)
        
        square100.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 11)
        view.addSubview(square100)
        
        square101.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square100.frame.origin.y)
        view.addSubview(square101)
        
        square102.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square100.frame.origin.y)
        view.addSubview(square102)
        
        square103.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square100.frame.origin.y)
        view.addSubview(square103)
        
        square104.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square100.frame.origin.y)
        view.addSubview(square104)
        
        square105.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square100.frame.origin.y)
        view.addSubview(square105)
        
        square106.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square100.frame.origin.y)
        view.addSubview(square106)
        
        square107.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square100.frame.origin.y)
        view.addSubview(square107)
        
        square108.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square100.frame.origin.y)
        view.addSubview(square108)
        
        square109.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 12)
        view.addSubview(square109)
        
        square110.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square109.frame.origin.y)
        view.addSubview(square110)
        
        square111.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square109.frame.origin.y)
        view.addSubview(square111)
        
        square112.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square109.frame.origin.y)
        view.addSubview(square112)
        
        square113.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square109.frame.origin.y)
        view.addSubview(square113)
        
        square114.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square109.frame.origin.y)
        view.addSubview(square114)
        
        square115.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square109.frame.origin.y)
        view.addSubview(square115)
        
        square116.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square109.frame.origin.y)
        view.addSubview(square116)
        
        square117.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square109.frame.origin.y)
        view.addSubview(square117)
        
        square118.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 13)
        view.addSubview(square118)
        
        square119.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square118.frame.origin.y)
        view.addSubview(square119)
        
        square120.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square118.frame.origin.y)
        view.addSubview(square120)
        
        square121.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square118.frame.origin.y)
        view.addSubview(square121)
        
        square122.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square118.frame.origin.y)
        view.addSubview(square122)
        
        square123.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square118.frame.origin.y)
        view.addSubview(square123)
        
        square124.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square118.frame.origin.y)
        view.addSubview(square124)
        
        square125.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square118.frame.origin.y)
        view.addSubview(square125)
        
        square126.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square118.frame.origin.y)
        view.addSubview(square126)
        
        square127.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 14)
        view.addSubview(square127)
        
        square128.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square127.frame.origin.y)
        view.addSubview(square128)
        
        square129.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square127.frame.origin.y)
        view.addSubview(square129)
        
        square130.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square127.frame.origin.y)
        view.addSubview(square130)
        
        square131.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square127.frame.origin.y)
        view.addSubview(square131)
        
        square132.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square127.frame.origin.y)
        view.addSubview(square132)
        
        square133.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square127.frame.origin.y)
        view.addSubview(square133)
        
        square134.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square127.frame.origin.y)
        view.addSubview(square134)
        
        square135.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square127.frame.origin.y)
        view.addSubview(square135)
        
        square136.frame.origin = CGPoint(x: view.frame.minX, y: square1.frame.origin.y + square1.frame.size.width * 15)
        view.addSubview(square136)
        
        square137.frame.origin = CGPoint(x: square1.frame.origin.x + square1.frame.size.width, y: square136.frame.origin.y)
        view.addSubview(square137)
        
        square138.frame.origin = CGPoint(x: square2.frame.origin.x + square1.frame.size.width, y: square136.frame.origin.y)
        view.addSubview(square138)
        
        square139.frame.origin = CGPoint(x: square3.frame.origin.x + square1.frame.size.width, y: square136.frame.origin.y)
        view.addSubview(square139)
        
        square140.frame.origin = CGPoint(x: square4.frame.origin.x + square1.frame.size.width, y: square136.frame.origin.y)
        view.addSubview(square140)
        
        square141.frame.origin = CGPoint(x: square5.frame.origin.x + square1.frame.size.width, y: square136.frame.origin.y)
        view.addSubview(square141)
        
        square142.frame.origin = CGPoint(x: square6.frame.origin.x + square1.frame.size.width, y: square136.frame.origin.y)
        view.addSubview(square142)
        
        square143.frame.origin = CGPoint(x: square7.frame.origin.x + square1.frame.size.width, y: square136.frame.origin.y)
        view.addSubview(square143)
        
        square144.frame.origin = CGPoint(x: square8.frame.origin.x + square1.frame.size.width, y: square136.frame.origin.y)
        view.addSubview(square144)
        
        view.bringSubviewToFront(buttonOutlet)
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        randomColor()
    }
    
    func randomColor() {
        square1.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square2.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square3.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square4.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square5.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square6.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square7.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square8.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square9.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square10.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square11.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square12.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square13.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square14.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square15.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square16.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square17.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square18.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square19.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square20.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square21.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square22.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square23.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square24.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square25.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square26.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square27.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square28.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square29.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square30.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square31.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square32.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square33.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square34.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square35.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square36.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square37.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square38.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square39.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square40.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square41.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square42.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square43.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square44.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square45.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square46.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square47.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square48.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square49.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square50.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square51.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square52.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square53.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square54.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square55.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square56.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square57.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square58.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square59.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square60.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square61.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square62.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square63.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square64.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square65.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square66.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square67.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square68.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square69.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square70.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square71.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square72.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square73.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square74.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square75.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square76.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square77.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square78.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square79.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square80.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square81.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square82.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square83.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square84.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square85.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square86.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square87.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square88.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square89.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square90.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square91.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square92.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square93.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square94.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square95.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square96.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square97.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square98.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square99.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square100.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square101.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square102.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square103.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square104.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square105.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square106.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square107.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square108.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square109.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square110.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square111.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square112.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square113.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square114.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square115.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square116.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square117.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square118.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square119.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square120.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square121.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square122.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square123.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square124.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square125.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square126.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square127.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square128.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square129.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square130.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square131.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square132.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square133.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square134.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square135.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square136.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square137.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square138.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square139.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square140.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square141.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square142.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square143.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        square144.backgroundColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
    }
}





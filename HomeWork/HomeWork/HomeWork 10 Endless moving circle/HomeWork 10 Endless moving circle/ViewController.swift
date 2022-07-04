//
//  ViewController.swift
//  HomeWork 10 Endless moving circle
//
//  Created by Alexander Yankuliov on 1.07.22.
//
//  Задание:
//
//  Бесконечное перемещение шарика по прямоугольнику.
//
//  iPhone 11

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private Properties
    private var myCircle: UIView = {
        let circle = UIView()
        circle.backgroundColor = .systemIndigo
        circle.translatesAutoresizingMaskIntoConstraints = false
        return circle
    }()
    
    private var topAnchor: NSLayoutConstraint?
    private var bottomAnchor: NSLayoutConstraint?
    private var leadingAnchor:NSLayoutConstraint?
    private var trailingAnchor: NSLayoutConstraint?
    private var inTop: Bool = true
    private var inBottom: Bool = true
    private var inLeading: Bool = true
    private var inTrailing: Bool = true

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        createVerticalTimer()
        createHorizontalTimer()
        
        view.backgroundColor = .lightGray
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear (animated)
        
        myCircle.layer.cornerRadius = myCircle.frame.height / 2
    }
    
    // MARK: - Private Funcs
    private func setupUI() {
        view.addSubview(myCircle)
        
        topAnchor = myCircle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        bottomAnchor = myCircle.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        leadingAnchor = myCircle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15)
        trailingAnchor = myCircle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15)
        
        guard let topAnchor = topAnchor,
              let leadingAnchor = leadingAnchor
        else { return }
        
        NSLayoutConstraint.activate([
            topAnchor,
            leadingAnchor,
            myCircle.widthAnchor.constraint (equalToConstant: 100),
            myCircle.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func createVerticalTimer() {
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { [weak self] timer in
            guard let self = self else { return }
            if self.inTop {
                self.animateBottom()
            } else {
                self.animateTop()
            }
        }
    }
    
    private func createHorizontalTimer() {
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { [weak self] timer in
            guard let self = self else { return }
            if self.inLeading {
                self.animateTrailing()
            } else {
                self.animateLeading()
            }
        }
    }
    
    private func animateTrailing() {
        trailingAnchor?.isActive = true
        leadingAnchor?.isActive = false
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        } completion: { _ in
            self.inLeading = false
        }
    }
    
    private func animateLeading() {
        leadingAnchor?.isActive = true
        trailingAnchor?.isActive = false
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        } completion: { _ in
            self.inLeading = true
        }
    }
    
    private func animateTop() {
        topAnchor?.isActive = true
        bottomAnchor?.isActive = false
        UIView.animate(withDuration: 0.7) {
            self.view.layoutIfNeeded()
        } completion: { _ in
            self.inTop = true
        }
    }
    
    private func animateBottom() {
        topAnchor?.isActive = false
        bottomAnchor?.isActive = true
        UIView.animate(withDuration: 0.7) {
            self.view.layoutIfNeeded()
        } completion: { _ in
            self.inTop = false
        }
    }
    
}



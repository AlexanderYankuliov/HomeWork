//
//  HighScore.swift
//  HomeWork 12 Race 2D Version 1.1
//
//  Created by Alexander Yankuliov on 15.07.22.
//

import UIKit

class HighScore: UIViewController {
    
    // MARK: - Private Properties
    private var highScoreView: UIImageView = {
        let highScoreView = UIImageView()
        highScoreView.image = .init(named: "ImageMenuScreen")
        highScoreView.contentMode = .scaleAspectFill
        highScoreView.translatesAutoresizingMaskIntoConstraints = false
        return highScoreView
    }()
    
    private var highScoreViewTopAnchor: NSLayoutConstraint?
    private var highScoreViewBottomAnchor: NSLayoutConstraint?
    private var highScoreViewLeadingAnchor: NSLayoutConstraint?
    private var highScoreViewTrailingAnchor: NSLayoutConstraint?
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHighScoreView()
        
        navigationController?.setNavigationBarHidden(false, animated: true)
//        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationController?.navigationBar.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
        title = "High score"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        let backButtonItem = UIBarButtonItem(title: "<  Back", style: .plain, target: self, action: #selector(didNavigationTapBar))
        backButtonItem.tintColor = .white
        navigationItem.leftBarButtonItem = backButtonItem
    }
    
    // MARK: - Actions
    @objc private func didNavigationTapBar() {
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Private Funcs
    private func setupHighScoreView() {
        view.addSubview(highScoreView)
        
        highScoreViewTopAnchor = highScoreView.topAnchor.constraint(equalTo: view.topAnchor)
        highScoreViewBottomAnchor = highScoreView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        highScoreViewLeadingAnchor = highScoreView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 75)
        highScoreViewTrailingAnchor = highScoreView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -75)
        
        highScoreViewTopAnchor?.isActive = true
        highScoreViewBottomAnchor?.isActive = true
        highScoreViewLeadingAnchor?.isActive = true
        highScoreViewTrailingAnchor?.isActive = true
    }
    
}

//
//  Settings.swift
//  HomeWork 12 Race 2D Version 1.1
//
//  Created by Alexander Yankuliov on 15.07.22.
//

import UIKit

class Settings: UIViewController {
    
    // MARK: - Private Properties
    private var settingsView: UIImageView = {
        let settingsView = UIImageView()
        settingsView.image = .init(named: "ImageMenuScreen")
        settingsView.contentMode = .scaleAspectFill
        settingsView.translatesAutoresizingMaskIntoConstraints = false
        return settingsView
    }()
    
    private var settingsViewTopAnchor: NSLayoutConstraint?
    private var settingsViewBottomAnchor: NSLayoutConstraint?
    private var settingsViewLeadingAnchor: NSLayoutConstraint?
    private var settingsViewTrailingAnchor: NSLayoutConstraint?
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSettingsView()
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        title = "Settings"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        let backButtonItem = UIBarButtonItem(title: "<  Back", style: .plain, target: self, action: #selector(didTapNavigationBar))
        backButtonItem.tintColor = .white
        navigationItem.leftBarButtonItem = backButtonItem
    }
    // MARK: - Actions
    @objc private func didTapNavigationBar() {
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Private Funcs
    private func setupSettingsView() {
        view.addSubview(settingsView)
        
        settingsViewTopAnchor = settingsView.topAnchor.constraint(equalTo: view.topAnchor)
        settingsViewBottomAnchor = settingsView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        settingsViewLeadingAnchor = settingsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 75)
        settingsViewTrailingAnchor = settingsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -75)
        
        settingsViewTopAnchor?.isActive = true
        settingsViewBottomAnchor?.isActive = true
        settingsViewLeadingAnchor?.isActive = true
        settingsViewTrailingAnchor?.isActive = true
    }
    
}

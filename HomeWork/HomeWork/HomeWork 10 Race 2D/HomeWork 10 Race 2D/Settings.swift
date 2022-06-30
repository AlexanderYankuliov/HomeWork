//
//  Settings.swift
//  HomeWork 10 Race 2D
//
//  Created by Alexander Yankuliov on 22.06.22.
//

import UIKit

class Settings: UIViewController {
    
    // MARK: - Private Properties
    private var settingsView: UIImageView = {
        let settingsView = UIImageView()
        settingsView.translatesAutoresizingMaskIntoConstraints = false
        return settingsView
    }()
    
    private var settingsViewTopAnchor: NSLayoutConstraint?
    private var settingsViewBottomAnchor: NSLayoutConstraint?
    private var settingsViewLeadingAnchor: NSLayoutConstraint?
    private var settingsViewTrailingAnchor: NSLayoutConstraint?
    
    // MARK: - Outlets
    @IBOutlet weak var Settings: UIImageView!
    
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
        settingsView.image = .init(named: "ImageMenuScreen")
        settingsView.contentMode = .scaleAspectFill
    }
    
}

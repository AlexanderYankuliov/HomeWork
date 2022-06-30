//
//  StartScreen.swift
//  HomeWork 10 Race 2D
//
//  Created by Alexander Yankuliov on 22.06.22.
//
//  Задание:
//
//  Гонки - основной экран игры, анимированное перемещение машинки по кнопкам вправо- влево, анимированное перемещение препятствий, кустов и разметки сверху-вниз за край экрана. Столкновение с препятствием или выезд с трассы разбивает машину, следовательно на экран меню.
//
//  iPhone 11

import UIKit

class StartScreen: UIViewController {
    
    // MARK: - Private Properties
    private var startScreenView: UIImageView = {
        let startScreenView = UIImageView()
        startScreenView.translatesAutoresizingMaskIntoConstraints = false
        return startScreenView
    }()
    
    private var startScreenViewTopAnchor: NSLayoutConstraint?
    private var startScreenViewBottomAnchor: NSLayoutConstraint?
    private var startScreenViewLeadingAnchor: NSLayoutConstraint?
    private var startScreenViewTrailingAnchor: NSLayoutConstraint?
    
    private lazy var buttonStartGame = makeStartGame()
    private lazy var buttonSettings = makeSettings()
    private lazy var buttonHighScore = makeHighScore()

    // MARK: - Outlets
    @IBOutlet weak var StartScreen: UIImageView!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupStartScreenView()

        view.addSubview(buttonStartGame)
        view.addSubview(buttonSettings)
        view.addSubview(buttonHighScore)

        NSLayoutConstraint.activate([
            buttonStartGame.heightAnchor.constraint(equalToConstant: 100),
            buttonStartGame.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            buttonStartGame.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            buttonStartGame.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonSettings.heightAnchor.constraint(equalToConstant: 50),
            buttonSettings.widthAnchor.constraint(equalToConstant: 170),
            buttonSettings.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            buttonSettings.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
        ])
        
        NSLayoutConstraint.activate([
            buttonHighScore.heightAnchor.constraint(equalToConstant: 50),
            buttonHighScore.widthAnchor.constraint(equalToConstant: 170),
            buttonHighScore.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            buttonHighScore.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
        ])
        
        buttonStartGame.addTarget(self, action: #selector(showStartGame), for: .touchUpInside)
        buttonSettings.addTarget(self, action: #selector(showSettings), for: .touchUpInside)
        buttonHighScore.addTarget(self, action: #selector(showHighScore), for: .touchUpInside)
    }
    
    // MARK: - Actions
    @objc private func showStartGame() {
        let storyboard = UIStoryboard(name: "StartGame", bundle: nil)
        let startScreen = storyboard.instantiateViewController(identifier: "StartGame")
        navigationController?.pushViewController(startScreen, animated: true)
    }
    
    @objc private func showSettings() {
        let storyboard = UIStoryboard(name: "Settings", bundle: nil)
        let startScreen = storyboard.instantiateViewController(identifier: "Settings")
        navigationController?.pushViewController(startScreen, animated: true)
    }
    
    @objc private func showHighScore() {
        let storyboard = UIStoryboard(name: "HighScore", bundle: nil)
        let startScreen = storyboard.instantiateViewController(identifier: "HighScore")
        navigationController?.pushViewController(startScreen, animated: true)
    }
    
    // MARK: - Private Funcs
    private func setupStartScreenView() {
        view.addSubview(startScreenView)
        
        startScreenViewTopAnchor = startScreenView.topAnchor.constraint(equalTo: view.topAnchor)
        startScreenViewBottomAnchor = startScreenView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        startScreenViewLeadingAnchor = startScreenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 75)
        startScreenViewTrailingAnchor = startScreenView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -75)
        
        startScreenViewTopAnchor?.isActive = true
        startScreenViewBottomAnchor?.isActive = true
        startScreenViewLeadingAnchor?.isActive = true
        startScreenViewTrailingAnchor?.isActive = true
        startScreenView.image = .init(named: "ImageMenuScreen")
        startScreenView.contentMode = .scaleAspectFill
    }
    
    private func makeStartGame() -> UIButton {
        let buttonStartGame = UIButton(frame: CGRect())
        buttonStartGame.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1)
        buttonStartGame.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        buttonStartGame.setTitleColor(.white, for: .normal)
        buttonStartGame.layer.cornerRadius = 50
        buttonStartGame.setTitle("START", for: .normal)
        buttonStartGame.translatesAutoresizingMaskIntoConstraints = false
        return buttonStartGame
    }
    
    private func makeSettings() -> UIButton {
        let buttonSettings = UIButton(frame: CGRect())
        buttonSettings.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1)
        buttonSettings.setTitleColor(.white, for: .normal)
        buttonSettings.layer.cornerRadius = 25
        buttonSettings.setTitle("⚙️  Settings", for: .normal)
        buttonSettings.translatesAutoresizingMaskIntoConstraints = false
        return buttonSettings
    }
    
    private func makeHighScore() -> UIButton {
        let buttonHighScore = UIButton(frame: CGRect())
        buttonHighScore.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1)
        buttonHighScore.setTitleColor(.white, for: .normal)
        buttonHighScore.layer.cornerRadius = 25
        buttonHighScore.setTitle("🏆  High score", for: .normal)
        buttonHighScore.translatesAutoresizingMaskIntoConstraints = false
        return buttonHighScore
    }
    
}


//
//  ViewController.swift
//  HomeWork 13 Hamburger menu and alerts
//
//  Created by Alexander Yankuliov on 11.07.22.
//
//  Задание:
//
//  Боковое меню по бургер-кнопке (меню выезжает слева), затенение основного экрана;
//  Extension UIViewController для алерта с одной и двумя кнопками;
//  Сделать алерт с вводом текста(пароль для входа).
//
//  iPhone 11

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private Properties
    private var hamburgerMenuIsHidden = true
    
    private let alertWithOneButton: UIView = {
        let view = UIButton()
        view.backgroundColor = UIColor.lightGray
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        view.setTitleColor(.black, for: .normal)
        view.setTitleColor(.gray, for: .highlighted)
        view.layer.cornerRadius = 25
        view.setTitle("Alert with ONE button", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let alertWithTwoButtons: UIView = {
        let view = UIButton()
        view.backgroundColor = UIColor.lightGray
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        view.setTitleColor(.black, for: .normal)
        view.setTitleColor(.gray, for: .highlighted)
        view.layer.cornerRadius = 25
        view.setTitle("Alert with TWO buttons", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    @objc private let alertWithTextInput: UIView = {
        let view = UIButton()
        view.backgroundColor = UIColor.lightGray
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        view.setTitleColor(.black, for: .normal)
        view.setTitleColor(.gray, for: .highlighted)
        view.layer.cornerRadius = 25
        view.setTitle("Alert with TEXT INPUT", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    // MARK: - Outlets
    @IBOutlet weak var screenShadingTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var screenShading: UIView!
    @IBOutlet weak var hamburgerMenuLeadingConstraint: NSLayoutConstraint!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(alertWithOneButton)
        view.addSubview(alertWithTwoButtons)
        view.addSubview(alertWithTextInput)
        
        NSLayoutConstraint.activate([
            alertWithOneButton.widthAnchor.constraint(equalToConstant: 200),
            alertWithOneButton.heightAnchor.constraint(equalToConstant: 50),
            alertWithOneButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60),
            alertWithOneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            alertWithTwoButtons.widthAnchor.constraint(equalToConstant: 200),
            alertWithTwoButtons.heightAnchor.constraint(equalToConstant: 50),
            alertWithTwoButtons.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            alertWithTwoButtons.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            alertWithTextInput.widthAnchor.constraint(equalToConstant: 200),
            alertWithTextInput.heightAnchor.constraint(equalToConstant: 50),
            alertWithTextInput.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60),
            alertWithTextInput.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        alertWithOneButton.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(alertOneButtonAction)))
        alertWithTwoButtons.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(alertTwoButtonsAction)))
        alertWithTextInput.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(alertWithTextInputAction)))
    }
    
    // MARK: - Action
    @objc private func alertOneButtonAction() {
        let alert = UIAlertController(title: "Info", message: "Tap to next button", preferredStyle: .alert)

        let firstAction = UIAlertAction(title: "OK", style: .default) { action in }
        
        alert.addAction(firstAction)

        present(alert, animated: true)
    }
    
    @objc private func alertTwoButtonsAction() {
        let alert = UIAlertController(title: "Warning", message: "Are you sure?", preferredStyle: .alert)
        
        let firstAction = UIAlertAction(title: "NO", style: .destructive) { action in }
        
        alert.addAction(firstAction)
        
        let secondAction = UIAlertAction(title: "YES", style: .cancel) { action in }
        
        alert.addAction(secondAction)
        
        present(alert, animated: true)
    }
    
    @objc private func alertWithTextInputAction() {
        let alert = UIAlertController(title: "Comment", message: "Enter text here", preferredStyle: .alert)

        let firstAction = UIAlertAction(title: "OK", style: .default) { action in
            let text = alert.textFields?.first?.text
            print(text ?? " ")
        }
        
        alert.addAction(firstAction)
        alert.addTextField(configurationHandler: nil)
        present(alert, animated: true)
    }
    
    @IBAction func hamburgerMenuButtonAction(_ sender: UIButton) {

        if !hamburgerMenuIsHidden {
            hamburgerMenuLeadingConstraint.constant = -200
            screenShadingTrailingConstraint.constant = 0
            hamburgerMenuIsHidden = true
        } else {
            hamburgerMenuLeadingConstraint.constant = 20
            screenShadingTrailingConstraint.constant = -414
            hamburgerMenuIsHidden = false
        }
        
//        UIView.animate(withDuration: 0.25,
//                       delay: 0.0,
//                       options: .curveEaseIn,
//                       animations: {
//            self.view.layoutIfNeeded()
//        })
    }
    
}

//extension ViewController {
//
//}
//
//extension UIViewController {
//    func showAlert(alertText: String, alertMessage: String) {
//        let alert = UIAlertController(title: alertText, message: alertMessage, preferredStyle: UIAlertControllerStyle.alert)
//        alert.addAction(UIAlertAction(title: "GO", style: UIAlertActionStyle.default))
//
//        present(alert, animated: true,completion: nil)
//    }
//}


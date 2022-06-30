//
//  StartGame.swift
//  HomeWork 10 Race 2D
//
//  Created by Alexander Yankuliov on 22.06.22.
//

import UIKit

class StartGame: UIViewController {
    
    // MARK: - Private Properties
    private var sandView: UIImageView = {
        let sandView = UIImageView()
        sandView.image = .init(named: "Sand")
        sandView.translatesAutoresizingMaskIntoConstraints = false
        return sandView
    }()
    
    private var roadMarkingsSideView: UIImageView = {
        let roadMarkingsSideView = UIImageView()
        roadMarkingsSideView.image = .init(named: "Road markings side")
        roadMarkingsSideView.translatesAutoresizingMaskIntoConstraints = false
        return roadMarkingsSideView
    }()
    
    private var asphaltView: UIImageView = {
        let asphaltView = UIImageView()
        asphaltView.image = .init(named: "Asphalt")
        asphaltView.translatesAutoresizingMaskIntoConstraints = false
        return asphaltView
    }()
    
    private var roadMarkingsCenterView: UIImageView = {
        let roadMarkingsCenterView = UIImageView()
        roadMarkingsCenterView.image = .init(named: "Road markings center")
        roadMarkingsCenterView.translatesAutoresizingMaskIntoConstraints = false
        return roadMarkingsCenterView
    }()
    
    private var bushLeftView: UIImageView = {
        let bushLeftView = UIImageView()
        bushLeftView.image = .init(named: "Bush")
        bushLeftView.contentMode = .scaleAspectFit
        bushLeftView.translatesAutoresizingMaskIntoConstraints = false
        return bushLeftView
    }()
    
    private var bushRightView: UIImageView = {
        let bushRightView = UIImageView()
        bushRightView.image = .init(named: "Bush")
        bushRightView.contentMode = .scaleAspectFit
        bushRightView.translatesAutoresizingMaskIntoConstraints = false
        return bushRightView
    }()
    
    private var carView: UIImageView = {
        let carView = UIImageView()
        carView.image = .init(named: "Car")
        carView.contentMode = .scaleAspectFit
        carView.translatesAutoresizingMaskIntoConstraints = false
        return carView
    }()
    
    private var leftButtonView: UIImageView = {
        let leftButtonView = UIImageView()
        leftButtonView.image = .init(named: "Left button")
        leftButtonView.translatesAutoresizingMaskIntoConstraints = false
        return leftButtonView
    }()
    
    private var rightButtonView: UIImageView = {
        let rightButtonView = UIImageView()
        rightButtonView.image = .init(named: "Right button")
        rightButtonView.translatesAutoresizingMaskIntoConstraints = false
        return rightButtonView
    }()
    
    private var barrierView: UIImageView = {
        let barrierView = UIImageView()
        barrierView.image = .init(named: "Barrier")
        barrierView.translatesAutoresizingMaskIntoConstraints = false
        return barrierView
    }()
    
    private var sandViewTopAnchor: NSLayoutConstraint?
    private var sandViewBottomAnchor: NSLayoutConstraint?
    private var sandViewLeadingAnchor: NSLayoutConstraint?
    private var sandViewTrailingAnchor: NSLayoutConstraint?
    
    private var roadMarkingsSideViewTopAnchor: NSLayoutConstraint?
    private var roadMarkingsSideViewBottomAnchor: NSLayoutConstraint?
    private var roadMarkingsSideViewLeadingAnchor: NSLayoutConstraint?
    private var roadMarkingsSideViewTrailingAnchor: NSLayoutConstraint?
    
    private var asphaltViewTopAnchor: NSLayoutConstraint?
    private var asphaltViewBottomAnchor: NSLayoutConstraint?
    private var asphaltViewCenterXAnchor: NSLayoutConstraint?
    private var asphaltViewWidthAnchor: NSLayoutConstraint?
    
    private var roadMarkingsCenterViewTopAnchor: NSLayoutConstraint?
    private var roadMarkingsCenterViewBottomAnchor: NSLayoutConstraint?
    private var roadMarkingsCenterViewWidthAnchor: NSLayoutConstraint?
    private var roadMarkingsCenterViewCenterXAnchor: NSLayoutConstraint?
    
    private var bushLeftViewTopAnchor: NSLayoutConstraint?
    private var bushLeftViewBottomAnchor: NSLayoutConstraint?
    private var bushLeftViewLeadingAnchor: NSLayoutConstraint?
    private var bushLeftViewTrailingAnchor: NSLayoutConstraint?
    
    private var bushRightViewTopAnchor: NSLayoutConstraint?
    private var bushRightViewBottomAnchor: NSLayoutConstraint?
    private var bushRightViewLeadingAnchor: NSLayoutConstraint?
    private var bushRightViewTrailingAnchor: NSLayoutConstraint?
    
    private var carViewBottomAnchor: NSLayoutConstraint?
    private var carViewLeadingAnchor: NSLayoutConstraint?
    private var carViewTrailingAnchor: NSLayoutConstraint?
    
    private var leftButtonViewHeightAnchor: NSLayoutConstraint?
    private var leftButtonViewWidthAnchor: NSLayoutConstraint?
    private var leftButtonViewBottomAnchor: NSLayoutConstraint?
    private var leftButtonViewLeadingAnchor: NSLayoutConstraint?
    
    private var rightButtonViewHeightAnchor: NSLayoutConstraint?
    private var rightButtonViewWidthAnchor: NSLayoutConstraint?
    private var rightButtonViewBottomAnchor: NSLayoutConstraint?
    private var rightButtonViewTrailingAnchor: NSLayoutConstraint?
    
    private var barrierViewTopAnchor: NSLayoutConstraint?
    private var barrierViewCenterXAnchor: NSLayoutConstraint?
    private var barrierViewBottomAnchor: NSLayoutConstraint?
    
    private let asphaltWidth: CGFloat = 264
    private var trueOrFalse: Bool = true
    private var timer: Timer?
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSandView()
        setupRoadMarkingsSideView()
        setupAsphaltView()
        setupRoadMarkingsCenterView()
        setupBushLeftView()
        setupBushRightView()
        setupCarView()
        setupBarrierView()
        setupLeftButtonView()
        setupRightButtonView()
        createVerticalTimer()

        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.bushLeftViewTopAnchor?.isActive = false
        self.bushLeftViewBottomAnchor?.isActive = true
        UIView.animate(withDuration: 0.3,
                       delay: 0,
                       options: [.repeat]) {
            self.view.layoutIfNeeded()
        }
        
        self.bushRightViewTopAnchor?.isActive = false
        self.bushRightViewBottomAnchor?.isActive = true
        UIView.animate(withDuration: 0.3,
                       delay: 0,
                       options: [.repeat]) {
            self.view.layoutIfNeeded() }
        
        self.roadMarkingsCenterViewTopAnchor?.isActive = true
        self.roadMarkingsCenterViewBottomAnchor?.isActive = false
        UIView.animate(withDuration: 0.3,
                       delay: 0,
                       options: [.repeat]) {
            self.view.layoutIfNeeded() }
    }
    
    deinit {
        timer?.invalidate()
    }
    
    @IBAction func didTapLeftButton(_ sender: UIButton) {
        guard let carViewLeadingAnchor = carViewLeadingAnchor,
              let carViewTrailingAnchor = carViewTrailingAnchor
        else { return }
        
        carViewLeadingAnchor.constant -= 30
        carViewTrailingAnchor.constant -= 30
        if carViewLeadingAnchor.constant <= -20 {
            navigationController?.popToRootViewController(animated: true)
        }
    }

    @IBAction func didTapRightButton(_ sender: UIButton) {
        guard let carViewLeadingAnchor = carViewLeadingAnchor,
              let carViewTrailingAnchor = carViewTrailingAnchor
        else { return }
        
        carViewLeadingAnchor.constant += 30
        carViewTrailingAnchor.constant += 30
        if carViewTrailingAnchor.constant >= 20 {
            navigationController?.popToRootViewController(animated: true)
        }
    }

    // MARK: - Private Funcs
    private func setupSandView() {
        view.addSubview(sandView)
        
        sandViewTopAnchor = sandView.topAnchor.constraint(equalTo: view.topAnchor)
        sandViewBottomAnchor = sandView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        sandViewLeadingAnchor = sandView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        sandViewTrailingAnchor = sandView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        
        sandViewTopAnchor?.isActive = true
        sandViewBottomAnchor?.isActive = true
        sandViewLeadingAnchor?.isActive = true
        sandViewTrailingAnchor?.isActive = true
    }
    
    private func setupRoadMarkingsSideView() {
        view.addSubview(roadMarkingsSideView)
        
        roadMarkingsSideViewTopAnchor = roadMarkingsSideView.topAnchor.constraint(equalTo: view.topAnchor)
        roadMarkingsSideViewBottomAnchor = roadMarkingsSideView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        roadMarkingsSideViewLeadingAnchor = roadMarkingsSideView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 72)
        roadMarkingsSideViewTrailingAnchor = roadMarkingsSideView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -72)
        
        roadMarkingsSideViewTopAnchor?.isActive = true
        roadMarkingsSideViewBottomAnchor?.isActive = true
        roadMarkingsSideViewLeadingAnchor?.isActive = true
        roadMarkingsSideViewTrailingAnchor?.isActive = true
    }
    
    private func setupAsphaltView() {
        view.addSubview(asphaltView)
        
        asphaltViewTopAnchor = asphaltView.topAnchor.constraint(equalTo: view.topAnchor)
        asphaltViewBottomAnchor = asphaltView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        asphaltViewCenterXAnchor = asphaltView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        asphaltViewWidthAnchor = asphaltView.widthAnchor.constraint(equalToConstant: asphaltWidth)
        
        asphaltViewTopAnchor?.isActive = true
        asphaltViewBottomAnchor?.isActive = true
        asphaltViewCenterXAnchor?.isActive = true
        asphaltViewWidthAnchor?.isActive = true
    }
    
    private func setupRoadMarkingsCenterView() {
        asphaltView.addSubview(roadMarkingsCenterView)
        
        roadMarkingsCenterViewTopAnchor = roadMarkingsCenterView.topAnchor.constraint(equalTo: view.topAnchor, constant: -200)
        roadMarkingsCenterViewBottomAnchor = roadMarkingsCenterView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 200)
        roadMarkingsCenterViewWidthAnchor = roadMarkingsCenterView.widthAnchor.constraint(equalToConstant: 15)
        roadMarkingsCenterViewCenterXAnchor = roadMarkingsCenterView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        roadMarkingsCenterViewTopAnchor?.isActive = false
        roadMarkingsCenterViewBottomAnchor?.isActive = true
        roadMarkingsCenterViewWidthAnchor?.isActive = true
        roadMarkingsCenterViewCenterXAnchor?.isActive = true
    }
    
    private func setupBushLeftView() {
        view.addSubview(bushLeftView)
        
        bushLeftViewTopAnchor = bushLeftView.topAnchor.constraint(equalTo: view.topAnchor, constant: -550)
        bushLeftViewBottomAnchor = bushLeftView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 550)
        bushLeftViewLeadingAnchor = bushLeftView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        bushLeftViewTrailingAnchor = bushLeftView.trailingAnchor.constraint(equalTo: roadMarkingsSideView.leadingAnchor, constant: -5)
        
        bushLeftViewTopAnchor?.isActive = true
        bushLeftViewBottomAnchor?.isActive = false
        bushLeftViewLeadingAnchor?.isActive = true
        bushLeftViewTrailingAnchor?.isActive = true
    }
    
    private func setupBushRightView() {
        view.addSubview(bushRightView)
        
        bushRightViewTopAnchor = bushRightView.topAnchor.constraint(equalTo: view.topAnchor, constant: -550)
        bushRightViewBottomAnchor = bushRightView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 550)
        bushRightViewLeadingAnchor = bushRightView.leadingAnchor.constraint(equalTo: roadMarkingsSideView.trailingAnchor, constant: 5)
        bushRightViewTrailingAnchor = bushRightView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        
        bushRightViewTopAnchor?.isActive = true
        bushRightViewBottomAnchor?.isActive = false
        bushRightViewLeadingAnchor?.isActive = true
        bushRightViewTrailingAnchor?.isActive = true
    }
    
    private func setupCarView() {
            asphaltView.addSubview(carView)
    
            carViewBottomAnchor = carView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
            carViewLeadingAnchor = carView.leadingAnchor.constraint(equalTo: asphaltView.leadingAnchor, constant: asphaltWidth / 3)
            carViewTrailingAnchor = carView.trailingAnchor.constraint(equalTo: asphaltView.trailingAnchor, constant: -asphaltWidth / 3)
    
            NSLayoutConstraint.activate([
                carView.heightAnchor.constraint(equalToConstant: 220),
            ])
    
            guard let carViewBottomAnchor = carViewBottomAnchor,
                  let carViewLeadingAnchor = carViewLeadingAnchor,
                  let carViewTrailingAnchor = carViewTrailingAnchor
            else { return }
    
            carViewBottomAnchor.isActive = true
            carViewLeadingAnchor.isActive = true
            carViewTrailingAnchor.isActive = true
        }
    
    private func setupLeftButtonView() {
        view.addSubview(leftButtonView)
        
        leftButtonViewHeightAnchor = leftButtonView.heightAnchor.constraint(equalToConstant: 70)
        leftButtonViewWidthAnchor = leftButtonView.widthAnchor.constraint(equalToConstant: 43)
        leftButtonViewBottomAnchor = leftButtonView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -105)
        leftButtonViewLeadingAnchor = leftButtonView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        
        leftButtonViewHeightAnchor?.isActive = true
        leftButtonViewWidthAnchor?.isActive = true
        leftButtonViewBottomAnchor?.isActive = true
        leftButtonViewLeadingAnchor?.isActive = true
    }
    
    private func setupRightButtonView() {
        view.addSubview(rightButtonView)
        
        rightButtonViewHeightAnchor = rightButtonView.heightAnchor.constraint(equalToConstant: 70)
        rightButtonViewWidthAnchor = rightButtonView.widthAnchor.constraint(equalToConstant: 43)
        rightButtonViewBottomAnchor = rightButtonView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -105)
        rightButtonViewTrailingAnchor = rightButtonView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        
        rightButtonViewHeightAnchor?.isActive = true
        rightButtonViewWidthAnchor?.isActive = true
        rightButtonViewBottomAnchor?.isActive = true
        rightButtonViewTrailingAnchor?.isActive = true
    }
    
    private func setupBarrierView() {
        asphaltView.addSubview(barrierView)
        
        barrierViewTopAnchor = barrierView.topAnchor.constraint(equalTo: asphaltView.topAnchor, constant: -100)
        barrierViewCenterXAnchor = barrierView.centerXAnchor.constraint(equalTo: asphaltView.centerXAnchor, constant: -asphaltWidth / 4)
        barrierViewBottomAnchor = barrierView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 100)
        
        NSLayoutConstraint.activate([
            barrierView.widthAnchor.constraint(equalToConstant: 100),
            barrierView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        guard let barrierViewTopAnchor = barrierViewTopAnchor,
              let barrierViewCenterXAnchor = barrierViewCenterXAnchor,
              let barrierViewBottomAnchor = barrierViewBottomAnchor
        else { return }
        
        barrierViewTopAnchor.isActive = true
        barrierViewCenterXAnchor.isActive = true
        barrierViewBottomAnchor.isActive = false
    }
    
    private func createVerticalTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 3.5, repeats: true) {
            [weak self] (timer) in
            self?.animateBottom()
            self?.positionBarrierView()
        }
    }
    
    private func animateBottom() {
        trueOrFalse = Bool.random()
        guard let barrierViewTopAnchor = barrierViewTopAnchor,
              let barrierViewBottomAnchor = barrierViewBottomAnchor
        else { return }
        barrierViewTopAnchor.isActive = false
        barrierViewBottomAnchor.isActive = true
        UIView.animate(withDuration: 3.5, delay: 0.0, options: .repeat) {
            self.asphaltView.layoutIfNeeded()
        } completion: { _ in
            self.barrierViewCenterXAnchor?.constant = self.trueOrFalse ? -self.asphaltWidth / 4 : self.asphaltWidth / 4
        }
    }
    
    private func positionBarrierView() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) {
            [weak self] (timer) in
            
            if let pointBarrierView = self?.barrierView.layer.presentation()?.frame.intersects(self?.carView.frame ?? CGRect(x: 0, y: 0, width: 0, height: 0)) {
                if pointBarrierView == true {
                    self?.navigationController?.popToRootViewController(animated: true)
                }
            }
        }
    }
}

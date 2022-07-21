//
//  HomeViewController.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 20/07/22.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK: - View
    fileprivate let logoView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.125, green: 0.125, blue: 0.141, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let logoRocketHelpImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "horizontal_ logo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let signOutButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "sign-out"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 0.07, green: 0.07, blue: 0.078, alpha: 1)
        
        signOutButton.addTarget(self, action: #selector(goBackToLoginScream), for: .touchUpInside)
        
        setupView()
        setupConstrains()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
    fileprivate func setupView() {
        view.addSubview(logoView)
        logoView.addSubview(logoRocketHelpImageView)
        logoView.addSubview(signOutButton)
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            logoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            logoView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            logoView.heightAnchor.constraint(equalToConstant: 138),
            
            logoRocketHelpImageView.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: -50),
            logoRocketHelpImageView.leadingAnchor.constraint(equalTo: logoView.leadingAnchor, constant: 20),
            
            signOutButton.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: -50),
            signOutButton.trailingAnchor.constraint(equalTo: logoView.trailingAnchor, constant: -20),
        ])
    }
    
    @objc
    func goBackToLoginScream() {
        let loginScream = LoginViewController()
     
        let navVC = UINavigationController(rootViewController: loginScream)
         navVC.modalPresentationStyle = .fullScreen
         present(navVC, animated: true)
    }
}

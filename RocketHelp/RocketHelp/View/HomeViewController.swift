//
//  HomeViewController.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 20/07/22.
//

import UIKit
import Foundation

class HomeViewController: UIViewController {
    let noCallsCreatedView = NoCallsCreatedView()
    
    //MARK: - View
    fileprivate let scrollView: UIScrollView = {
      let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor(red: 0.125, green: 0.125, blue: 0.141, alpha: 1)
        scrollView.isScrollEnabled = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
      return scrollView
    }()
    
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
    
    fileprivate let viewContainerBody: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.07, green: 0.07, blue: 0.078, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let requestsLabel: UILabel = {
        let label = UILabel()
        label.text = "Solicitações"
        label.textColor = UIColor(red: 0.88, green: 0.88, blue: 0.90, alpha: 1)
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let requestsValueLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = UIColor(red: 0.88, green: 0.88, blue: 0.90, alpha: 1)
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let buttonsView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.07, green: 0.07, blue: 0.078, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let inProgressButton: UIButton = {
        let button = UIButton()
        button.setTitle("EM ANDAMENTO", for: .normal)
        button.backgroundColor = UIColor(red: 0.125, green: 0.125, blue: 0.141, alpha: 1)
        button.setTitleColor(UIColor(red: 0.98, green: 0.66, blue: 0.29, alpha: 1), for: .normal)
        button.layer.cornerRadius = 4
        button.layer.borderColor = CGColor(red: 0.98, green: 0.66, blue: 0.29, alpha: 1)
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    fileprivate let finalizedButton: UIButton = {
        let button = UIButton()
        button.setTitle("FINALIZADOS", for: .normal)
        button.setTitleColor(UIColor(red: 0.01, green: 0.82, blue: 0.38, alpha: 1), for: .normal)
        button.layer.cornerRadius = 4
        button.layer.borderColor = CGColor(red: 0.01, green: 0.82, blue: 0.38, alpha: 1)
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    fileprivate let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    fileprivate let newRequestButton: UIButton = {
        let button = UIButton()
        button.setTitle("Nova solicitação", for: .normal)
        button.backgroundColor = UIColor(red: 0, green: 0.52, blue: 0.37, alpha: 1)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 6
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    fileprivate let suportView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.07, green: 0.07, blue: 0.078, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        view.addSubview(scrollView)
        scrollView.addSubview(logoView)
        logoView.addSubview(logoRocketHelpImageView)
        logoView.addSubview(signOutButton)
        scrollView.addSubview(viewContainerBody)
        viewContainerBody.addSubview(requestsLabel)
        viewContainerBody.addSubview(requestsValueLabel)
        viewContainerBody.addSubview(buttonsView)
        buttonsView.addSubview(inProgressButton)
        buttonsView.addSubview(finalizedButton)
        viewContainerBody.addSubview(stackView)
        stackView.addArrangedSubview(noCallsCreatedView)
        viewContainerBody.addSubview(newRequestButton)
        viewContainerBody.addSubview(suportView)
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            logoView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            logoView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            logoView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            logoView.heightAnchor.constraint(equalToConstant: 100),
            
            logoRocketHelpImageView.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: -50),
            logoRocketHelpImageView.leadingAnchor.constraint(equalTo: logoView.leadingAnchor, constant: 20),
            
            signOutButton.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: -50),
            signOutButton.trailingAnchor.constraint(equalTo: logoView.trailingAnchor, constant: -20),
            
            viewContainerBody.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 0),
            viewContainerBody.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            viewContainerBody.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            viewContainerBody.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            viewContainerBody.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            viewContainerBody.heightAnchor.constraint(equalToConstant: 700),
            
            requestsLabel.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 20),
            requestsLabel.leadingAnchor.constraint(equalTo: viewContainerBody.leadingAnchor, constant: 20),
            
            requestsValueLabel.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 20),
            requestsValueLabel.trailingAnchor.constraint(equalTo: viewContainerBody.trailingAnchor, constant: -20),
            
            buttonsView.topAnchor.constraint(equalTo: requestsValueLabel.bottomAnchor, constant: 12),
            buttonsView.leadingAnchor.constraint(equalTo: viewContainerBody.leadingAnchor, constant: 0),
            buttonsView.trailingAnchor.constraint(equalTo: viewContainerBody.trailingAnchor, constant: 0),
            buttonsView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            buttonsView.heightAnchor.constraint(equalToConstant: 50),
            
            inProgressButton.topAnchor.constraint(equalTo: buttonsView.topAnchor, constant: 10),
            inProgressButton.leadingAnchor.constraint(equalTo: buttonsView.leadingAnchor, constant: UIScreen.main.bounds.width <= 375 ? 12 : 20),
            inProgressButton.widthAnchor.constraint(equalToConstant: 170),
            inProgressButton.heightAnchor.constraint(equalToConstant: 40),
            
            finalizedButton.topAnchor.constraint(equalTo: buttonsView.topAnchor, constant: 10),
            finalizedButton.trailingAnchor.constraint(equalTo: buttonsView.trailingAnchor, constant: UIScreen.main.bounds.width <= 375 ? -12 : -20),
            finalizedButton.widthAnchor.constraint(equalToConstant: 170),
            finalizedButton.heightAnchor.constraint(equalToConstant: 40),
            
            stackView.topAnchor.constraint(equalTo: buttonsView.bottomAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: viewContainerBody.leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: viewContainerBody.trailingAnchor, constant: 0),
            
            newRequestButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 0),
            newRequestButton.leadingAnchor.constraint(equalTo: viewContainerBody.leadingAnchor, constant: 20),
            newRequestButton.trailingAnchor.constraint(equalTo: viewContainerBody.trailingAnchor, constant: -20),
            newRequestButton.bottomAnchor.constraint(equalTo: viewContainerBody.bottomAnchor, constant: -10),
            newRequestButton.heightAnchor.constraint(equalToConstant: 50),
            
            suportView.topAnchor.constraint(equalTo: newRequestButton.bottomAnchor, constant: 0),
            suportView.leadingAnchor.constraint(equalTo: viewContainerBody.leadingAnchor, constant: 0),
            suportView.trailingAnchor.constraint(equalTo: viewContainerBody.trailingAnchor, constant: 0),
            suportView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            suportView.heightAnchor.constraint(equalToConstant: 100),
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

//
//  ViewController.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 19/07/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - View
    fileprivate let logoRocketHelpImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "rocketHelp_logo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let accessYourAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Acesse sua conta"
        label.textColor = UIColor(red: 0.88, green: 0.88, blue: 0.90, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let emailTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(
            string: "E-mail",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.48, green: 0.48, blue: 0.54, alpha: 1)]
        )
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.textColor = .white
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.layer.cornerRadius = 6
        textField.backgroundColor = UIColor(red: 0.07, green: 0.07, blue: 0.078, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    fileprivate let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(
            string: "Senha",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.48, green: 0.48, blue: 0.54, alpha: 1)]
        )
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.textColor = .white
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.layer.cornerRadius = 6
        textField.backgroundColor = UIColor(red: 0.07, green: 0.07, blue: 0.078, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    fileprivate let logInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Entrar", for: .normal)
        button.backgroundColor = UIColor(red: 0, green: 0.52, blue: 0.37, alpha: 1)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 6
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 0.125, green: 0.125, blue: 0.141, alpha: 1)
        
        setupView()
        setupConstrains()
    }
    
    fileprivate func setupView() {
        view.addSubview(logoRocketHelpImageView)
        view.addSubview(accessYourAccountLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(logInButton)
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            
            logoRocketHelpImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            logoRocketHelpImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 94),
            
            accessYourAccountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            accessYourAccountLabel.topAnchor.constraint(equalTo: logoRocketHelpImageView.bottomAnchor, constant: 100),
            
            emailTextField.topAnchor.constraint(equalTo: accessYourAccountLabel.bottomAnchor, constant: 20),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 56),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 56),
            
            logInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            logInButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}


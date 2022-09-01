//
//  NewRequestViewController.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 26/07/22.
//

import Foundation
import UIKit

class NewRequestViewController: UIViewController {
    //MARK: - View
    fileprivate let scrollView: UIScrollView = {
      let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor(red: 0.125, green: 0.125, blue: 0.141, alpha: 1)
        scrollView.isScrollEnabled = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
      return scrollView
    }()
    
    fileprivate let viewContainerBody: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.125, green: 0.125, blue: 0.141, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let requestNumberTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(
            string: "Número do Patrimônio",
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
    
    fileprivate let requestDescriptionTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(
            string: "Descrição do problema",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.48, green: 0.48, blue: 0.54, alpha: 1)]
        )
        textField.placeholderRect(forBounds: CGRect(x: 20, y: 20, width: UIScreen.main.bounds.width, height: 500))
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.textColor = .white
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.layer.cornerRadius = 6
        textField.backgroundColor = UIColor(red: 0.07, green: 0.07, blue: 0.078, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    fileprivate let registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = UIColor(red: 0, green: 0.52, blue: 0.37, alpha: 1)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 6
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 0.125, green: 0.125, blue: 0.141, alpha: 1)
        
        title = "Solicitações"
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .done, target: self, action: #selector(backAction))
        navigationItem.leftBarButtonItem?.tintColor = UIColor.white
        
        registerButton.addTarget(self, action: #selector(goToDetailsRequest), for: .touchUpInside)
        
        setupView()
        setupConstrains()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
    fileprivate func setupView() {
        view.addSubview(scrollView)
        scrollView.addSubview(viewContainerBody)
        viewContainerBody.addSubview(requestNumberTextField)
        viewContainerBody.addSubview(requestDescriptionTextField)
        viewContainerBody.addSubview(registerButton)
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            viewContainerBody.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            viewContainerBody.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            viewContainerBody.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            viewContainerBody.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            viewContainerBody.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            viewContainerBody.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height),
            
            requestNumberTextField.topAnchor.constraint(equalTo: viewContainerBody.topAnchor, constant: 10),
            requestNumberTextField.leadingAnchor.constraint(equalTo: viewContainerBody.leadingAnchor, constant: 20),
            requestNumberTextField.trailingAnchor.constraint(equalTo: viewContainerBody.trailingAnchor, constant: -20),
            requestNumberTextField.heightAnchor.constraint(equalToConstant: 56),
            
            requestDescriptionTextField.topAnchor.constraint(equalTo: requestNumberTextField.bottomAnchor, constant: 20),
            requestDescriptionTextField.leadingAnchor.constraint(equalTo: viewContainerBody.leadingAnchor, constant: 20),
            requestDescriptionTextField.trailingAnchor.constraint(equalTo: viewContainerBody.trailingAnchor, constant: -20),
            requestDescriptionTextField.heightAnchor.constraint(equalToConstant: 500),
            
            registerButton.topAnchor.constraint(equalTo: requestDescriptionTextField.bottomAnchor, constant: 30),
            registerButton.leadingAnchor.constraint(equalTo: viewContainerBody.leadingAnchor, constant: 20),
            registerButton.trailingAnchor.constraint(equalTo: viewContainerBody.trailingAnchor, constant: -20),
            registerButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc
    func goToDetailsRequest() {
        let detailsRequest = DetailsRequestViewController()
        let navVC = UINavigationController(rootViewController: detailsRequest)
        navVC.modalPresentationStyle = .fullScreen
        navVC.hidesBarsOnSwipe = true
        navVC.navigationBar.prefersLargeTitles = false
        present(navVC, animated: true)
    }
    
    @objc
    func backAction(){
        dismiss(animated: true, completion: nil)
    }
}

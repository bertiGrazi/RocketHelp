//
//  DetailsRequestViewController.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 27/07/22.
//

import Foundation
import UIKit

class DetailsRequestViewController: UIViewController {
    //MARK: - View
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 0.125, green: 0.125, blue: 0.141, alpha: 1)
        
        title = "Detalhes"
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .done, target: self, action: #selector(backAction))
        navigationItem.leftBarButtonItem?.tintColor = UIColor.white
        
        setupView()
        setupConstrains()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
    fileprivate func setupView() {
        
    }
    
    fileprivate func setupConstrains() {
        
    }
    
    @objc
    func backAction() {
        dismiss(animated: true)
    }
}


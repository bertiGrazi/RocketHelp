//
//  HomeViewController.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 20/07/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 0.125, green: 0.125, blue: 0.141, alpha: 1)
        
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
}

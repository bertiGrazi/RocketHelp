//
//  NoCallsCreatedView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 21/07/22.
//

import Foundation
import UIKit

class NoCallsCreatedView: UIView {
    // MARK: - View
    fileprivate let viewNoCallsCreated: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.07, green: 0.07, blue: 0.078, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let noCallsCreatedIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "no_calls_created")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let noCallsCreatedLabel: UILabel = {
        let label = UILabel()
        label.text = "Você ainda não tem\nchamados criados"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.54, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont(name: "Roboto", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        noCallsCreatedLabel.numberOfLines = 0
        
        addSubview(viewNoCallsCreated)
        viewNoCallsCreated.addSubview(noCallsCreatedIcon)
        viewNoCallsCreated.addSubview(noCallsCreatedLabel)
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            viewNoCallsCreated.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            viewNoCallsCreated.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            viewNoCallsCreated.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
//            viewNoCallsCreated.widthAnchor.constraint(equalToConstant: 300),
//            viewNoCallsCreated.heightAnchor.constraint(equalToConstant: 300),
            
            noCallsCreatedIcon.centerXAnchor.constraint(equalTo: viewNoCallsCreated.centerXAnchor, constant: 0),
            noCallsCreatedIcon.topAnchor.constraint(equalTo: viewNoCallsCreated.topAnchor, constant: 36),
            viewNoCallsCreated.widthAnchor.constraint(equalToConstant: 80),
            viewNoCallsCreated.heightAnchor.constraint(equalToConstant: 80),
            
            noCallsCreatedLabel.topAnchor.constraint(equalTo: noCallsCreatedIcon.bottomAnchor, constant: 16),
            noCallsCreatedLabel.leadingAnchor.constraint(equalTo: viewNoCallsCreated.leadingAnchor, constant: 20),
            noCallsCreatedLabel.trailingAnchor.constraint(equalTo: viewNoCallsCreated.trailingAnchor, constant: -20),
        ])
    }
}

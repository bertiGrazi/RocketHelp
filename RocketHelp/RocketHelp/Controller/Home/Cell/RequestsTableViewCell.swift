//
//  RequestsTableViewCell.swift
//  RocketHelp
//
//  Created by Grazi Berti on 25/07/22.
//

import Foundation
import UIKit

class RequestsTableViewCell: UITableViewCell {
    // MARK: - Variable
    static let identifier = "ListMoviesTableViewCell"
    
    // MARK: - View
    fileprivate let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.125, green: 0.125, blue: 0.141, alpha: 1)
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let cardLeftColorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.98, green: 0.66, blue: 0.29, alpha: 1)
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let numberRequestLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.88, green: 0.88, blue: 0.90, alpha: 1)
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = UIColor(red: 0.07, green: 0.07, blue: 0.078, alpha: 1)
        
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        contentView.addSubview(cardView)
        cardView.addSubview(cardLeftColorView)
        cardView.addSubview(numberRequestLabel)
    }
    
    fileprivate func setupConstraints() {
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            cardView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10),
            cardView.widthAnchor.constraint(equalToConstant: 380),
            cardView.heightAnchor.constraint(equalToConstant: 88),
            
            cardLeftColorView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 0),
            cardLeftColorView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 0),
            cardLeftColorView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 0),
            cardLeftColorView.widthAnchor.constraint(equalToConstant: 10),
            cardLeftColorView.heightAnchor.constraint(equalToConstant: 88),
            
            numberRequestLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 10),
            numberRequestLabel.leadingAnchor.constraint(equalTo: cardLeftColorView.leadingAnchor, constant: 20),
        ])
    }
    
    func configCell(data: RequestDataSource) {
        numberRequestLabel.text = "Patrimônio \(data.numberRequest)"
    }
}

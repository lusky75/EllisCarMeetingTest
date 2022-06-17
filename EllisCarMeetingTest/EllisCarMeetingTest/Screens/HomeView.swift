//
//  HomeView.swift
//  EllisCarMeetingTest
//
//  Created by CHEN on 17/06/2022.
//

import Foundation

import UIKit

class HomeView: UIView {
    
    var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bienvenue !"
        label.font = UIFont.setDemiBoldFont(size: 14)
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .ellisCarDarkColor
        
        addSubview(welcomeLabel)
        
        welcomeLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        welcomeLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

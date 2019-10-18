//
//  UsernameViewController.swift
//  LoginScreen
//
//  Created by Amulya Balakrishnan on 10/18/19.
//  Copyright © 2019 Amulya Balakrishnan. All rights reserved.
//

import Foundation
import UIKit

class UsernameViewController: UIViewController {
    var username: String?
    let usernameLabel: UILabel = UILabel() 
    let navButton = UIButton(type: .system)
    
    init(username: String) { // similar to how you initialize in Java
        self.username = username
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addUsernameLabel()
    }
    
    func addUsernameLabel() {
        
        if let username = self.username {
            usernameLabel.text = username
        }
        
        view.addSubview(usernameLabel)
        
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let yConstraint = usernameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20)
        let leftConstraint = usernameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        let rightConstraint = usernameLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        
        //        userNameField.backgroundColor = .red
        
        yConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
    }
    
    func addNavButton() {
        navButton.setTitle("Navigate", for .normal)
        navButton.setTitleColor (.white, for: .normal)
        navButton.backgroundColor = .blue
        
        navButton.addTarget(self, action: #selector(navButtonPressed), for: .touchUpInside)
        
        view.addSubview(navButton)
        
        navButton.translatesAutoresizingMaskIntoConstraints = false
        
        // add constraints for button
        let yConstraint = navButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 40)
        let leftConstraint = navButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        let rightConstraint = navButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        
        // activate constraints
        yConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
    }
    
    @objc
    func navButtonPressed() {
        print("Button Pressed")
    }
}







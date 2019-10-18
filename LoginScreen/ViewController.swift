//
//  ViewController.swift
//  LoginScreen
//
//  Created by Amulya Balakrishnan on 10/11/19.
//  Copyright © 2019 Amulya Balakrishnan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() { // every view controller has diff states. this gets run every time view gets loaded for the first time
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        addLabel()
        
        // Add logo
        addLogo()
        
        // Add text fields for username and password
        addUserNameField()
        addPassWordField()
        
        // Add login button
        addLoginButton()
        
    }
    
    func addLogo() {
        // Create UIImageView - a view that holds an image, just like UILabel is a view that holds text
        var logoView = UIImageView()
        
        // Add insta logo to UIImageView; logoView is a class & image is one of its properties, think of dog example. In dog example, name was of type string, but in this, it is of type UIImage
        logoView.image = UIImage(named: "instagram-logo.png") // pass in the name of the image we are trying to make. Go into assets folder and find Instagram logo. Note that image has to be png. Jpeg won't work!
        
        // Set aspect ratio
        logoView.contentMode = .scaleAspectFit // the dot (.) notation is an enum
        
        // Add imageView as subview
        view.addSubview(logoView)
        
        // set translatesAutoResizing to false
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        // add constraints; constraints denote where the image will appear on the screen
        // you could use either topConstraint or center y Constraint, but top constraint is more intuirive to use in this case
        let topConstraint = logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 70)
        let xConstraint = logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        let widthConstraint = logoView.widthAnchor.constraint(equalToConstant: 250)
        // activate constraints
        topConstraint.isActive = true
        xConstraint.isActive = true
        widthConstraint.isActive = true
    }

    
    // code to add label
    func addLabel() {
        
        // crete label
        let nameLabel = UILabel() // always start off by making a variable a let constant. if it needs to change, you can always change it to variable so it would look like var nameLabel = UILabel()
        
        // set text
        nameLabel.text = "Label"
        
        // Set translatesAutoResizingMaskIntoConstraints to false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Add label as subview
        view.addSubview(nameLabel)
        
        // create constraints
        let xConstraint = nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor) // anchor - centers everything
        let yConstraint = nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor) // anchor
        
        // activate the constraints
        xConstraint.isActive = true
        yConstraint.isActive = true
    
    }
    
    func addUserNameField() {
        // create text field
        let userNameField = UITextField()
        
        // set properties
        userNameField.placeholder = "Username"
        userNameField.delegate = self // delegates to ViewController
        userNameField.textAlignment = .center
        
        view.addSubview(userNameField)
        
        userNameField.translatesAutoresizingMaskIntoConstraints = false
        
        let yConstraint = userNameField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20)
        let leftConstraint = userNameField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        let rightConstraint = userNameField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        
//        userNameField.backgroundColor = .red
       
        yConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
        
    }
    
    func addPassWordField() {
        // create text field
        let passWordField = UITextField()
        
        // set properties
        passWordField.placeholder = "Password"
        passWordField.delegate = self // delegates to ViewController
        passWordField.textAlignment = .center
        
        view.addSubview(passWordField)
        
        passWordField.translatesAutoresizingMaskIntoConstraints = false
        
        let yConstraint = passWordField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20)
        let leftConstraint = passWordField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        let rightConstraint = passWordField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        
        // activate constraints
        yConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
        
    }
    
    func addLoginButton() {
        let loginButton = UIButton(type: .system) // do .system for now because it is one of the default types (comes w/ a lot of things like animations, etc.)
        
        // set properties for button
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.blue, for: .normal)
        
        view.addSubview(loginButton)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        // add constraints for button
        let yConstraint = loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 40)
        let leftConstraint = loginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        let rightConstraint = loginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        
        // activate constraints
        yConstraint.isActive = true
        leftConstraint.isActive = true
        rightConstraint.isActive = true
    }


}

extension ViewController: UITextFieldDelegate { // advantage of extensions is that it's clean so you can modularize your code
    // every time user presses return key, this function should get called
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // dismiss the keyboard
        textField.resignFirstResponder() // dismisses the text field
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("user started typing")
    }
}


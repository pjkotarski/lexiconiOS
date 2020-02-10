//
//  SignUpViewController.swift
//  lexicon
//
//  Created by Pierce Kotarski on 2/5/20.
//  Copyright © 2020 piercejk. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    private let firstNameTextField = UITextField()
    private let lastNameTextField = UITextField()
    private let emailTextField = UITextField()
    private let passwordTextField = UITextField()
    private let confirmPasswordTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0, green: 0.4784, blue: 0.9882, alpha: 1)
        
        let labels = ["First Name", "Last Name", "Email", "Password", "Confirm Password"]
        
        let items = [firstNameTextField, lastNameTextField, emailTextField, passwordTextField, confirmPasswordTextField]
        
        passwordTextField.isSecureTextEntry = true
        confirmPasswordTextField.isSecureTextEntry = true
        
        for (ind,item) in items.enumerated() {
            view.addSubview(item)
            item.translatesAutoresizingMaskIntoConstraints = false
            item.backgroundColor = .white
            item.placeholder = labels[ind]
            
            item.snp.makeConstraints({ (make) -> Void in
                make.centerX.equalTo(self.view)
                make.height.equalTo(50)
                make.width.equalTo(233)
                if ind == 0{
                    make.centerY.equalTo(view.bounds.height / 5)
                }else{
                    make.top.equalTo(items[ind-1].snp.bottom).offset(30)
                }
            })
        }
        
        let createAccountButton = UIButton()
        view.addSubview(createAccountButton)
        
        createAccountButton.addTarget(self, action: #selector(self.signUpButtonClicked), for: .touchUpInside)
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        
        createAccountButton.backgroundColor = #colorLiteral(red: 0.1137, green: 0, blue: 0.7686, alpha: 1)
        createAccountButton.setTitle("Create Account", for: .normal)
        createAccountButton.setTitleColor(.white, for: .normal)
        
        createAccountButton.snp.makeConstraints({ (make) -> Void in
            make.height.equalTo(50)
            make.width.equalTo(200)
            
            make.centerX.equalTo(self.view)
            make.top.equalTo(confirmPasswordTextField.snp.bottom).offset(40)
        })
        
    }
    
    @objc func signUpButtonClicked(signUpButton : UIButton) {
        
        let user = User(firstName: self.firstNameTextField.text!, lastName: self.lastNameTextField.text!, email: self.emailTextField.text!, password: self.passwordTextField.text!)
    
        
        let client = UsersApiClient()
        
        client.createUser(user, completion: { result in
            
            switch result {
            case .success(let user):
                print("it worked with \(String(describing: user.email))")
            case .failure(let error):
                print("an error occured \(error)")
            }
        })
        
    }
}

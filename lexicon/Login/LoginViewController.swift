//
//  LoginViewController.swift
//  lexicon
//
//  Created by Pierce Kotarski on 2/5/20.
//  Copyright © 2020 piercejk. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0, green: 0.4784, blue: 0.9882, alpha: 1)
        
        createTextFields()
        
        
    
    }
    
    func createTextFields() {
        let emailTextField = UITextField()
        let passwordTextField = UITextField()
        let loginButton = UIButton()
        let forgotPasswordButton = UIButton()
        
        let items = [emailTextField, passwordTextField, loginButton, forgotPasswordButton]
        
        passwordTextField.isSecureTextEntry = true
        
        for item in items {
            view.addSubview(item)
            item.translatesAutoresizingMaskIntoConstraints = false
            
        }
        
        emailTextField.placeholder = "email"
        passwordTextField.placeholder = "password"
        
        loginButton.setTitle("Login", for: .normal)
        forgotPasswordButton.setTitle("Forgot Password", for: .normal)
        
        emailTextField.backgroundColor = .white
        passwordTextField.backgroundColor = .white
        
        loginButton.backgroundColor = #colorLiteral(red: 0.1137, green: 0, blue: 0.7686, alpha: 1)
        forgotPasswordButton.backgroundColor = UIColor.clear
        forgotPasswordButton.setTitleColor(.white, for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
    
        
        emailTextField.snp.makeConstraints({ (make) -> Void in
            make.centerX.equalTo(self.view.bounds.width/2)
            make.centerY.equalTo(self.view.bounds.height / 3)
            
            make.height.equalTo(50)
            make.width.equalTo(233)
        })
        
        passwordTextField.snp.makeConstraints({ (make) -> Void in
            make.centerX.equalTo(self.view.bounds.width/2)
            make.top.equalTo(emailTextField.snp.bottom).offset(30)
            make.height.equalTo(50)
            make.width.equalTo(233)
        })
        
        loginButton.snp.makeConstraints({ (make) -> Void in
            make.height.equalTo(50)
            make.width.equalTo(233)
            make.centerX.equalTo(self.view.bounds.width/2)
            make.top.equalTo(passwordTextField.snp.bottom).offset(30)
            
        })
        
        forgotPasswordButton.snp.makeConstraints({ (make) -> Void in
            make.height.equalTo(50)
            make.width.equalTo(233)
            make.centerX.equalTo(self.view.bounds.width/2)
            make.top.equalTo(loginButton.snp.bottom).offset(30)
        })
        
        
    }

}

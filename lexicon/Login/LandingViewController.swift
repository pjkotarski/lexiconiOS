//
//  LandingViewController.swift
//  lexicon
//
//  Created by Pierce Kotarski on 2/5/20.
//  Copyright © 2020 piercejk. All rights reserved.
//

import UIKit
import SnapKit

//should I embed all of this in a navigation controller?

class LandingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0, green: 0.4784, blue: 0.9882, alpha: 1)
        let bnds = UIScreen.main.bounds
        setupLogo(bnds : bnds)
        setupButton(bnds : bnds)
        
    }
    
    func setupLogo(bnds : CGRect) {
        
        let logoView = UIImageView()
        logoView.image = UIImage(named: "logo")
        view.addSubview(logoView)
        
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        logoView.snp.makeConstraints({ (make) -> Void in
            make.height.equalTo(bnds.height/10)
            make.width.equalTo(bnds.width / (3/2))
            make.centerX.equalTo(bnds.width / 2)
            make.centerY.equalTo(bnds.height/3)
        });
    }
    
    func setupButton(bnds : CGRect) {
        
        let loginButton = UIButton()
        let signupButton = UIButton()
        
        loginButton.addTarget(self, action:#selector(self.loginButtonClicked), for: .touchUpInside)
        signupButton.addTarget(self, action:#selector(self.singupButtonClicked), for: .touchUpInside)
        
        view.addSubview(loginButton)
        view.addSubview(signupButton)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        
        loginButton.backgroundColor = .white
        loginButton.setTitleColor(.black, for: .normal)
        signupButton.backgroundColor = #colorLiteral(red: 0.1137, green: 0, blue: 0.7686, alpha: 1)
        
        loginButton.setTitle("Login", for: .normal)
        signupButton.setTitle("Sign Up", for: .normal)
        
        loginButton.snp.makeConstraints({ (make) -> Void in
            make.height.equalTo(bnds.height / 30)
            make.width.equalTo(bnds.width / 3)
            make.centerX.equalTo(bnds.width / 2)
            make.centerY.equalTo(bnds.height / (4/3))
        })
        
        signupButton.snp.makeConstraints({ (make) -> Void in
            make.height.equalTo(bnds.height / 30)
            make.width.equalTo(bnds.width / 3)
            make.centerX.equalTo(bnds.width / 2)
            make.centerY.equalTo(bnds.height / (4/3) + bnds.height / 15)
        })
    }

    @objc func loginButtonClicked(loginButton : UIButton) {
        navigationController?.pushViewController(LoginViewController(), animated: true)
    }
    
    @objc func singupButtonClicked(signUpButton : UIButton) {
        navigationController?.pushViewController(SignUpViewController(), animated: true)
    }

    
    
    
}

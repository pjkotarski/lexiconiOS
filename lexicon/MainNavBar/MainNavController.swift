//
//  MainNavController.swift
//  lexicon
//
//  Created by Pierce Kotarski on 11/21/19.
//  Copyright © 2019 piercejk. All rights reserved.
//

import UIKit

class MainNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.tintColor = .white
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
        
    }
    

 

}

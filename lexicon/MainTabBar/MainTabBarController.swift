//
//  MainTabBarController.swift
//  lexicon
//
//  Created by Pierce Kotarski on 11/21/19.
//  Copyright © 2019 piercejk. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .white
        
        setupTabs()
    }
    
    func setupTabs(){
        
        let homeView = MainNavController(rootViewController: HomeViewController())
        homeView.tabBarItem.image = UIImage(named: "homeGray")
        homeView.tabBarItem.selectedImage = UIImage(named : "homeBlack")
        
        let learnView = MainNavController(rootViewController: LearnViewController())
        learnView.tabBarItem.image = UIImage(named : "learnGray")
        learnView.tabBarItem.selectedImage = UIImage(named : "learnBlack")
        
        let searchView = MainNavController(rootViewController: SearchViewController())
        searchView.tabBarItem.image = UIImage(named : "searchGray")
        searchView.tabBarItem.selectedImage = UIImage(named : "searchBlack")
        
        let accountView = MainNavController(rootViewController: AccountViewController())
        accountView.tabBarItem.image = UIImage(named : "accountGray")
        accountView.tabBarItem.selectedImage = UIImage(named: "accountBlack")
        
        viewControllers = [homeView, learnView, searchView, accountView]
        
    }

}

//
//  HomeViewController.swift
//  lexicon
//
//  Created by Pierce Kotarski on 11/21/19.
//  Copyright © 2019 piercejk. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = WordTableViewCell()
            return cell
        }
        //we still need to create the cells
        let cell = tableView.dequeueReusableCell(withIdentifier: "learningNow") as! WordTableViewCell
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "home"
        
        //sets up the search bar that will appear in navigation window on movement.
        //next we need a table that has a constant top cell, but changing cells beneath.
        setUpSearch()
        
        
    }
    
    func setUpSearch(){
        let searchController = UISearchController(searchResultsController: self)
        navigationItem.searchController = searchController
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

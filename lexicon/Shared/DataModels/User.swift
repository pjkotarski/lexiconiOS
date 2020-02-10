//
//  User.swift
//  lexicon
//
//  Created by Pierce Kotarski on 2/5/20.
//  Copyright © 2020 piercejk. All rights reserved.
//

import Foundation

final class User : Codable  {
    var id: Int?
    var firstName : String?
    var lastName : String?
    var email : String?
    var password : String?
    
    init(firstName : String, lastName : String, email : String, password : String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
    }
    
    init(firstName : String, lastName: String, email : String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
}

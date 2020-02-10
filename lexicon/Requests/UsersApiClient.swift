//
//  UsersApiRequests.swift
//  lexicon
//
//  Created by Pierce Kotarski on 2/5/20.
//  Copyright © 2020 piercejk. All rights reserved.
//

import Foundation


enum APIError: Error {
    case responseProblem
    case decodingProblem
    case otherProblem
}


struct UsersApiClient {
    
    func createUser( _ userToAdd: User, completion: @escaping(Result<User,APIError>) -> ()) {
        
        guard let url = URL(string: ApiConstants.usersDomain + ApiConstants.createUserEndpoint) else {return}
        
        do {
            
            
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.addValue("application/JSON", forHTTPHeaderField: "Content-Type")
            request.httpBody = try JSONEncoder().encode(userToAdd)
            
         
            URLSession.shared.dataTask(with: request) { (data, response, error)  in
                
                if let _ = error {
                    print("Failed to fetch the required data ")
                    completion(.failure(.responseProblem))
                    return
                }
                
                
                guard let data = data else {return}
                
                do {
                    let newUser = try JSONDecoder().decode(User.self, from: data)
                    completion(.success(newUser))
                } catch {
                    print("Failed to create the user")
                    completion(.failure(.decodingProblem))
                }
                
            }.resume()
            
        } catch {
            completion(.failure(.decodingProblem))
        }
            
    }
    
}

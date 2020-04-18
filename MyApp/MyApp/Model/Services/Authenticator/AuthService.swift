//
//  AuthService.swift
//  MyApp
//
//  Created by Christopher Tanaka on 4/18/20.
//  Copyright © 2020 Christopher Tanaka. All rights reserved.
//

import Foundation

class AuthService {
    
    func login(username: String, userPassword: String) -> Bool {
        
        return getCustomer(username: username, userPassword: userPassword)
    }
    
    private func getCustomer(username: String, userPassword: String) -> Bool{
        let personService = HttpPersonService()
        
        return personService.getPerson(username: username, password: userPassword)
    }
}

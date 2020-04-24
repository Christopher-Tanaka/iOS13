//
//  AuthService.swift
//  MyApp
//
//  Created by Christopher Tanaka on 4/18/20.
//  Copyright © 2020 Christopher Tanaka. All rights reserved.
//

import Foundation

public class AuthService {
    
    public func login(username: String, password: String) -> Bool {
        
        return getCustomer(username: username, password: password)
    }
    
    private func getCustomer(username: String, password: String) -> Bool{
        let personService = HttpPersonService()
        
        return personService.getPerson(username: username, password: password)
    }
    
    private func validateBasic(username: String, password: String) -> Bool {
        if(username.isEmpty || password.isEmpty) {
            return false
        }
        
        return true
    }
}

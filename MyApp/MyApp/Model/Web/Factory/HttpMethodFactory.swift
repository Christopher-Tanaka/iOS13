//
//  HttpMethodFactory.swift
//  MyApp
//
//  Created by Christopher Tanaka on 4/18/20.
//  Copyright © 2020 Christopher Tanaka. All rights reserved.
//

import Foundation

class HttpMethodFactory {
    
    static func createHttpMethod(methodType: HttpMethodType) -> HttpMethod {
        
        var httpMethod: HttpMethod
        
        switch methodType {
        case .post:
            httpMethod = Post()
        case .get:
            httpMethod = Get()
        default:
             httpMethod = Get() //Throw ArgumentOutOffRange exception ou algo do tipo...
        }
        
        return httpMethod
    }
}

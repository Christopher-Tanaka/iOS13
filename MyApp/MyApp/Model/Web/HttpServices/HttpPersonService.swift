//
//  HttpPersonServcie.swift
//  MyApp
//
//  Created by Christopher Tanaka on 4/18/20.
//  Copyright © 2020 Christopher Tanaka. All rights reserved.
//

import Foundation

class HttpPersonService {
    
    //TODO Fake request for test porpose only!
    internal let url = "http://www.stackoverflow.com"
    
    func getPerson(username: String, password: String) -> Bool {
        
        //TODO Implementar esse metodo depois...
        let request = HttpRequest(
            url: self.url, timeout: 99999, methodType: HttpMethodType.post
        )
        
        let requester = HttpRequester()
        
        let response = requester.doRequest(request: request)
        
        return response.statusCode == 200
    }
}

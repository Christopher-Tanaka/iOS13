//
//  Post.swift
//  MyApp
//
//  Created by Christopher Tanaka on 4/18/20.
//  Copyright © 2020 Christopher Tanaka. All rights reserved.
//

import Foundation

class Post: HttpMethod {
    func doRequest(httpRequest: HttpRequest) -> HttpResponse {

        let session = URLSession.shared
        let url = URL(string: httpRequest.url)!
        var statusCode: Int = 0
        var responseContent: String = ""
        var taskEnded: Bool = false;
        
        var request = URLRequest(url: URL(string: httpRequest.url)!)
        request.httpMethod = "POST"
        
        
        
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
        // Check the response
            if let urlResp = response as? HTTPURLResponse {
                statusCode = Int(urlResp.statusCode)
            }
            
            print(error)
            print(response)
            
            guard let data = data else{ return }
            
            responseContent = String(data: data, encoding: .utf8)!
            
            taskEnded = true;
        })
        task.resume()
        
        while !taskEnded {
            sleep(1)
            print("waiting...")
        }
        
        return HttpResponse(statusCode: statusCode, data: responseContent)
        // TODO: Implement this method...
    }
}

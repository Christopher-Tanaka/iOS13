//
//  HttpMethod.swift
//  MyApp
//
//  Created by Christopher Tanaka on 4/18/20.
//  Copyright © 2020 Christopher Tanaka. All rights reserved.
//

import Foundation

protocol HttpMethod {
    
    func doRequest(httpRequest: HttpRequest) -> HttpResponse
    
}

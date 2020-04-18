//
//  HttpRequest.swift
//  MyApp
//
//  Created by Christopher Tanaka on 4/18/20.
//  Copyright © 2020 Christopher Tanaka. All rights reserved.
//

import Foundation

struct HttpRequest {
    var url: String
    var timeout: Int
    var methodType: HttpMethodType
}

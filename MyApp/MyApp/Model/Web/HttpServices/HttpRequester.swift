//
//  HttpRequester.swift
//  MyApp
//
//  Created by Christopher Tanaka on 4/18/20.
//  Copyright © 2020 Christopher Tanaka. All rights reserved.
//

import Foundation

class HttpRequester {
    
    func doRequest(request: HttpRequest) -> HttpResponse {
        let method = getHttpMethod(httpMethodType: request.methodType)
        
        return method.doRequest(httpRequest: request)
    }
    
    private func getHttpMethod(httpMethodType: HttpMethodType) -> HttpMethod {
        return HttpMethodFactory.createHttpMethod(methodType: httpMethodType)
    }
}

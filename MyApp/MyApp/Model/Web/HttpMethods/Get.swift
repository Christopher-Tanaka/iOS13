//
//  Get.swift
//  MyApp
//
//  Created by Christopher Tanaka on 4/18/20.
//  Copyright © 2020 Christopher Tanaka. All rights reserved.
//

import Foundation


class Get: HttpMethod {
    func doRequest(httpRequest: HttpRequest) -> HttpResponse {
        return HttpResponse(statusCode: 200, data: "teste")
        // TODO: Implement this method...
    }
}

//
//  FutureContract.swift
//  MyApp
//
//  Created by Christopher Tanaka on 4/18/20.
//  Copyright © 2020 Christopher Tanaka. All rights reserved.
//

import Foundation

class FutureContract: Asset {
    let assetCategory: AssetCategory = .futureContract
    
    var ticker: String = ""
    var price: Decimal = 0.0
    var side: SideType = .buy
    var contractQtty: Int = 0
    var expirationDate: Date = Date()
    var settlementDate: Date = Date()
}

//
//  BananaMilk.swift
//  VendingMachineApp
//
//  Created by moon on 2018. 6. 23..
//  Copyright © 2018년 moon. All rights reserved.
//

import Foundation

class BananaMilk: Milk {
    private var flavor: String
    
    override init(name: String, price: Int, farmCode: Int) {
        self.flavor = "바나나맛"
        super.init(name: name, price: price, farmCode: farmCode)
    }
    
    convenience init() {
        self.init(name: DefaultData.bananaMilk.name, price: DefaultData.bananaMilk.price, farmCode: 102)
    }
    
    required init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        self.flavor = try container.decode(String.self)
        try super.init(from: decoder)
    }
    
    override func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(flavor)
        try super.encode(to: encoder)
    }
}

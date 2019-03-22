//
//  StringExtension.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 20/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import Foundation
extension String{
    mutating func addDollarSymbol(){
        let newValue = "$" + self
        self = newValue
    }
}

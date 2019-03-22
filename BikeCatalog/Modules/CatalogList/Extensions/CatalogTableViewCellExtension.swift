//
//  CatalogTableViewCellExtansion.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 20/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import Foundation
import UIKit
extension CatalogListTableViewCell{
    func fillCell(array: [BikesCatalog]){
        self.modelNameLabel.text = array[0].model
        self.companyNameLabel.text = array[0].company.rawValue
        self.priceLabel.text = String(array[0].price)
        self.priceLabel.text?.addDollarSymbol()
        self.cellLayout()
    }
    func cellLayout(){
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
    }
}

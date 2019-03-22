//
//  BikeInfoView.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 20/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import UIKit

class BikeInfoView: UIView {
    @IBOutlet weak var bikeImage: UIImageView!
    @IBOutlet weak var modelNameLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var bikeDescriptionTextView: UITextView!
    @IBOutlet weak var viewTitleItem: UINavigationItem!
    
    func fillAndTuneView(model: String, company: String, description: String, price: Double){
        self.modelNameLabel.text = model
        self.companyNameLabel.text = company
        self.bikeDescriptionTextView.text = description
        self.viewTitleItem.title = model
        self.priceLabel.text = String(price)
        self.priceLabel?.text?.addDollarSymbol()
        self.bikeDescriptionTextView.layer.borderWidth = 1
    }
    deinit {
        print("BikeInfoView removed from the memory")
    }
    
}

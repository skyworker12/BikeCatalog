//
//  BikeInfoViewController.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 20/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import UIKit

class BikeInfoViewController: UIViewController {
    @IBOutlet weak var bikeInfoView: BikeInfoView?
    var bikeInfoModel = BikeInfoModel()
    var bikeInfoArray = [BikesCatalog]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bikeInfoView?.fillAndTuneView(model: bikeInfoArray[0].model, company: bikeInfoArray[0].company.rawValue, description: bikeInfoArray[0].description, price: bikeInfoArray[0].price)
        self.loadAndSetImage()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func moveToCatalogList(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    deinit {
        print("BikeInfoViewController removed from the memory")
    }
}

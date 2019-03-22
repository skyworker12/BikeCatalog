//
//  ViewController.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 19/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import UIKit

class CatalogListViewController: UIViewController {
    var catalogListModel = CatalogListModel()
    var catalogListArray = [BikesCatalog](){
        didSet{
            DispatchQueue.main.async{
              self.catalogListView?.catalogListTableView.reloadData()
            }
        }

    }

    @IBOutlet var catalogListView: CatalogListView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.catalogListView?.catalogListTableView.delegate = self
        self.catalogListView?.catalogListTableView.dataSource = self
        
        self.loadCatalog()
    }
}


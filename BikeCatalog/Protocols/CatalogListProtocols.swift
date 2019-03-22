//
//  CatalogListProtocols.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 20/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import Foundation
protocol CatalogListModelProtocol{
    var getDataFromInternet: GetDataFromInternetProtocol {get}
    func getArrayForCLVC(completion: @escaping (_ array: [BikesCatalog]?, _ error: Error?) -> ())
}

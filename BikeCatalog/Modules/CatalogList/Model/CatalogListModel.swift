//
//  CatalogListModel.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 20/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import Foundation
class CatalogListModel: CatalogListModelProtocol{
    
    var getDataFromInternet: GetDataFromInternetProtocol = GetDataFromInternet()
    
    func getArrayForCLVC(completion: @escaping ([BikesCatalog]?, Error?) -> ()) {
        self.getDataFromInternet.getData(completion: {response, error in
            if let arrayFromData = response{
                completion(arrayFromData, nil)
            }else if let downloadError = error{
                completion(nil, downloadError)
            }
        })
     }
}

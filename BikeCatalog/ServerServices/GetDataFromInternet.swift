//
//  GetDataFromInternet.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 19/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import Foundation
import Alamofire

class GetDataFromInternet: GetDataFromInternetProtocol{
    var urlResourse: String{
        return "https://static.upstarts.work/test_task/bikes_catalog/bikes_164Sf3fqye4u.json"
    }
    
    func getData(completion: @escaping ([BikesCatalog]?, Error?) -> Void) {
        guard let url = URL(string: urlResourse) else {return}
        Alamofire.request(url).responseData(completionHandler: { data in
            do{
                guard let responseData = data.data else {return}
                let parsingObjects = try JSONDecoder().decode(BikeCatalog.self, from: responseData)
                completion(parsingObjects.bikesCatalog, nil)
            }catch{
                completion(nil, data.error)
            }
        })
    }
    
    
}


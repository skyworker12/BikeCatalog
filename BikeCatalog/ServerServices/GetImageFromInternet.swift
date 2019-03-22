//
//  GetImageFromInternet.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 20/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import Foundation
import Alamofire
class GetImageFromInternet: GetImageFromInternetProtocol{
    func getImage(urlResourse: String, completion: @escaping (Data?, Error?) -> Void) {
        guard let url = URL(string: urlResourse) else {return}
        Alamofire.request(url).responseData(completionHandler:{data in
            completion(data.data, data.error)
        })
    }
    
    
}

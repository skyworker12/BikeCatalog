//
//  BikeInfoModel.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 20/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import Foundation
class BikeInfoModel{
    
    var getImageFromInternet: GetImageFromInternetProtocol = GetImageFromInternet()
    
    func getImageForBIVC(imageUrl: String, completion: @escaping (Data?, Error?) -> Void){
        getImageFromInternet.getImage(urlResourse: imageUrl, completion: {data, error in
            if let error = error{
                completion(nil, error)
            }else if let data = data{
                completion(data, nil)
            }
        })
    }
}

//
//  GetDataFromInternetProtocol.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 19/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import Foundation
protocol GetDataFromInternetProtocol{
    var urlResourse: String {get}
    func getData(completion:@escaping ([BikesCatalog]?,Error?)->Void)
}
protocol GetImageFromInternetProtocol{
    func getImage(urlResourse: String, completion: @escaping (Data?, Error?) -> Void)
}

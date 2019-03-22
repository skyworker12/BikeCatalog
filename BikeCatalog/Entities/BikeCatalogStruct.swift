//
//  BikeCatalogStruct.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 19/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import Foundation

struct BikeCatalog: Codable {
    let bikesCatalog: [BikesCatalog]
    
    enum CodingKeys: String, CodingKey {
        case bikesCatalog = "bikes_catalog"
    }
}

struct BikesCatalog: Codable {
    let company: Company
    let model: String
    let price: Double
    let description: String
    let picture: String
}

enum Company: String, Codable {
    case soma = "Soma"
    case surly = "Surly"
    case trek = "Trek"
}

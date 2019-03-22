//
//  BikeInfoExtensions.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 20/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import Foundation
import UIKit
extension BikeInfoViewController{
    func loadAndSetImage() {
        self.bikeInfoModel.getImageForBIVC(imageUrl: self.bikeInfoArray[0].picture, completion: {[unowned self] data, error in
            if error != nil{
                DispatchQueue.main.async {
                    self.bikeInfoView?.bikeImage.image = UIImage(named: "triste-sleepy-emoticon-faccia-quadrata_318-58580")
                }
            }else if let downloadImage = data{
                DispatchQueue.main.async {
                    self.bikeInfoView?.bikeImage.image = UIImage(data: downloadImage)
                }
            }
        })
    }
}

//
//  ErrorPopUpView.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 20/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import UIKit

class ErrorPopUpView: UIView {
    @IBOutlet weak var errorDescriptionLabel: UILabel!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var errorMessageView: UIView!
    
    func tuneView(){
        self.animShowFromBotton()
        self.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        self.errorMessageView.layer.cornerRadius = 20
        self.okButton.layer.cornerRadius = 20
        self.okButton.layer.borderWidth = 2
    }

}

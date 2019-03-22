//
//  ErrorPopUpViewController.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 20/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import UIKit

class ErrorPopUpViewController: UIViewController {
    @IBOutlet weak var errorPopUpView: ErrorPopUpView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.errorPopUpView?.tuneView()
        // Do any additional setup after loading the view.
    }
    override func viewDidDisappear(_ animated: Bool) {
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch? = touches.first
        if touch?.view != self.errorPopUpView!.errorMessageView{
            self.errorPopUpView!.animHideFromHide()
        }
    }
    @IBAction func oKButtonTaped(_ sender: Any) {
         self.errorPopUpView!.animHideFromHide()
    }
    deinit {
        print("ErrorPopUpViewController removed from memory")
    }
}

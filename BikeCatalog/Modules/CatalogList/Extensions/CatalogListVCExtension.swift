//
//  CatalogListVCExtansion.swift
//  BikeCatalog
//
//  Created by Никита Кудряков on 20/03/2019.
//  Copyright © 2019 Никита Кудряков. All rights reserved.
//

import Foundation
import UIKit
extension CatalogListViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return self.catalogListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CatalogListTableViewCell
        cell.fillCell(array: [catalogListArray[indexPath.row]])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let bikeInfoVC = UIStoryboard(name: "BikeInfoStoryboard", bundle: nil).instantiateViewController(withIdentifier: "bikeInfoVC") as? BikeInfoViewController else {return}
        bikeInfoVC.bikeInfoArray = [self.catalogListArray[indexPath.row]]
        self.present(bikeInfoVC, animated: true, completion: nil)
    }
    func loadCatalog(){
        catalogListModel.getArrayForCLVC(completion: {[unowned self] data, error in
            if let downloadError = error{
                self.showErrorPopUp(error: (downloadError.localizedDescription))
            }else if let downloadArray = data{
                self.catalogListArray = downloadArray
                print(self.catalogListArray)
            }
        })
    }
    func showErrorPopUp(error: String){
        guard let popUpErrVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popUpErrVC") as? ErrorPopUpViewController else {return}
        self.addChild(popUpErrVC)
        popUpErrVC.view.frame = self.view.frame
        self.view.addSubview(popUpErrVC.view)
        popUpErrVC.didMove(toParent: self)
        popUpErrVC.errorPopUpView?.errorDescriptionLabel.text = error
    }
}

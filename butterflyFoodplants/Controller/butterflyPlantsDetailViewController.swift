//
//  butterflyPlantsDetailViewController.swift
//  butterflyFoodplants
//
//  Created by Seng Lam on 2018/5/2.
//  Copyright © 2018年 Seng Lam. All rights reserved.
//

import UIKit
import WebKit

class butterflyPlantsDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var butterflyFoodplant = ButterflyFoodplant()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: butterflyFoodplantDetailTextCell.self), for: indexPath) as! butterflyFoodplantDetailTextCell
            cell.descriptionLabel.text = butterflyFoodplant.description
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: butterflyDetailSeparatorCell.self), for: indexPath) as! butterflyDetailSeparatorCell
            cell.titleLabel.text = "How To Get Here"
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: butterflyDetailMapCell.self), for: indexPath) as! butterflyDetailMapCell
            cell.configure(location: cell.getData(btfName: butterflyFoodplant.name))
            return cell
        default:
            fatalError("Failed to instantiate the table view cell")
        }
    }
    
    @IBOutlet var headerViewer: butterflyFoodplantsDetailHeaderView!    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        headerViewer.headerImageView.image = UIImage(named: butterflyFoodplant.image)
        headerViewer.nameLabel.text = butterflyFoodplant.name
        headerViewer.typeLabel.text = butterflyFoodplant.type
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMap" {
            let destinationController = segue.destination as! mapViewController
            destinationController.butterflyFoodplant = butterflyFoodplant
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

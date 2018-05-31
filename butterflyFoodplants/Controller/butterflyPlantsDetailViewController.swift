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
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: butterflyFoodplantDetailTextCell.self), for: indexPath) as! butterflyFoodplantDetailTextCell
            cell.descriptionLabel.text = butterflyFoodplant.description
            return cell
            
        default:
            fatalError("Failed to instantiate the table view cell")
        }
    }
    
    
    
    
    var butterflyFoodplant: ButterflyFoodplant = ButterflyFoodplant()
    @IBOutlet var headerViewer: butterflyFoodplantsDetailHeaderView!    
    
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

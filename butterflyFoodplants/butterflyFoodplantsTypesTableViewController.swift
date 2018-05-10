//
//  TableViewController.swift
//  butterflyFoodplants
//
//  Created by Seng Lam on 2018/5/1.
//  Copyright © 2018年 Seng Lam. All rights reserved.
//

import UIKit

class butterflyFoodplantsTypesTableViewController: UITableViewController {

    var butterflyFoodplantsType = ["十字花科","大風子科","大戟科","山柑科"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return butterflyFoodplantsType.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! butterflyFoodplantsTableViewCell
        cell.typeName.text = butterflyFoodplantsType[indexPath.row]
        cell.typeThumbnailImageView.image = UIImage(named: butterflyFoodplantsType[indexPath.row])
        return cell
    }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showButterflyFoodplantsType" {
                if let indexPath = tableView.indexPathForSelectedRow{
                    let destinationController = segue.destination as! butterflyFoodplantsTableViewController
                    switch butterflyFoodplantsType[indexPath.row]{
                    case "十字花科":
                        destinationController.butterflyFoodplantsName = ["獨行菜","薺","油菜","葶藶","蔊菜"]
                    case "大風子科":
                        destinationController.butterflyFoodplantsName = ["羅比梅"]
                    case "大戟科":
                        destinationController.butterflyFoodplantsName = ["裏白饅頭果","粗糠柴","細葉饅頭果","紅仔珠","高氏佛饅頭果"]
                    case "山柑科":
                        destinationController.butterflyFoodplantsName = ["平伏莖白花菜","毛瓣蝴蝶木"]
                    default:
                        break
                    }
                    destinationController.navigationItem.title = butterflyFoodplantsType[indexPath.row]
                }
            }
        }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

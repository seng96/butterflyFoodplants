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
//    ["獨行菜","薺","油菜","葶藶","蔊菜"]
//    ["羅比梅"]
//    ["裏白饅頭果","粗糠柴","細葉饅頭果","山漆莖","高氏佛饅頭果"]
//    ["平伏莖白花菜","毛瓣蝴蝶木"]

    
    
    
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
                    destinationController.butterflyFoodplants = [ButterflyFoodplant(name: "獨行菜", type: "十字花科", image: "獨行菜", description: "北美獨行菜（學名：Lepidium virginicum）為十字花科獨行菜屬的植物。分布於美洲、歐洲以及中國大陸的江蘇、河南、江西、福建、廣西、山東、浙江、湖北、安徽等地，常生長在田邊和荒地，目前尚未由人工引種栽培。"),ButterflyFoodplant(name: "薺", type: "十字花科", image: "薺", description: "薺菜（學名：Capsella bursa-pastoris），又名護生草、地菜、地米菜、菱閘菜等，十字花科薺菜屬植物。起源於東歐和小亞細亞，目前在世界各地都很常見。其種加詞來自拉丁語，意思是「小盒子」、「牧人的錢包」，是形容它的角果形狀像牧人的錢包。"),ButterflyFoodplant(name: "油菜", type: "十字花科", image: "油菜", description: "西洋油菜（學名：Brassica napus）又名油菜籽、甘藍型油菜、油麻菜籽、麻油菜籽、大油菜，是十字花科草本植物，主要用途是油料經濟作物。油菜籽的種籽粒可制油脂，它分為冬油菜和春油菜兩種。油菜籽含芥酸、芥子鹼、單寧等化學物質，含毒性"),ButterflyFoodplant(name: "葶藶", type: "十字花科", image: "葶藶", description: "葶藶（學名：Draba nemorosa）為十字花科葶藶屬下的一個種。"),ButterflyFoodplant(name: "蔊菜", type: "十字花科", image: "蔊菜", description: "蔊菜（學名：Rorippa indica），又稱塘葛菜或葛菜，是十字花科蔊菜屬的一種植物，為原野雜草。")]
                case "大風子科":
                    destinationController.butterflyFoodplants = [ButterflyFoodplant(name: "羅比梅", type: "大風子科", image: "羅比梅", description: "羅比梅（學名：Flacourtia inermis）為大風子科羅庚果屬下的一個種。")]
                case "大戟科":
                    destinationController.butterflyFoodplants = [ButterflyFoodplant(name: "裏白饅頭果", type: "大戟科", image: "裏白饅頭果", description: "裏白饅頭果（學名：Glochidion acuminatum）為大戟科饅頭果屬下的一個種。"),ButterflyFoodplant(name: "粗糠柴", type: "大戟科", image: "粗糠柴", description: "粗糠柴（學名：Mallotus philippensis）為大戟科野桐屬下的一個種。"),ButterflyFoodplant(name: "細葉饅頭果", type: "大戟科", image: "細葉饅頭果", description: "細葉饅頭果（學名：Glochidion rubrum）為大戟科饅頭果屬下的一個種。"),ButterflyFoodplant(name: "山漆莖", type: "大戟科", image: "山漆莖", description: "山漆莖（學名：Glochidion lutescens），為大戟科算盤子屬下的一個種。"),ButterflyFoodplant(name: "高士佛饅頭果", type: "大戟科", image: "高氏佛饅頭果", description: "暫沒找到有關簡介資料。")]
                case "山柑科":
                    destinationController.butterflyFoodplants = [ButterflyFoodplant(name: "平伏莖白花菜", type: "山柑科", image: "平伏莖白花菜", description: "皺子白花菜（學名：Cleome rutidosperma），臺灣稱平伏莖白花菜、成功白花菜，是山柑科白花菜屬的植物。分布於新加坡、馬來西亞、緬甸、台灣、菲律賓、印度尼西亞以及中國大陸的雲南等地，多生在苗圃、農場、路旁草地、荒地以及常為田間雜草，目前尚未由人工引種栽培。"),ButterflyFoodplant(name: "毛瓣蝴蝶木", type: "山柑科", image: "毛瓣蝴蝶木", description: "暫沒找到有關簡介資料。")]
                default:
                    break
                }
                destinationController.navigationItem.title = butterflyFoodplantsType[indexPath.row]
//                    destinationController.butterflyFoodplant = butterflyFoodplants[indexPath.row]
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

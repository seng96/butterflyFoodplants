//
//  TableViewController.swift
//  butterflyFoodplants
//
//  Created by Seng Lam on 2018/5/1.
//  Copyright © 2018年 Seng Lam. All rights reserved.
//

import UIKit

class butterflyFoodplantsTypesTableViewController: UITableViewController {
    
    var butterflyFoodplantsType = ["鳳蝶科","蛺蝶科","灰蝶科"]
    
    
    
    
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
                case "鳳蝶科":
                    // xpath = //*[@id="mw-content-text"]/div/p[1]
                    // xpath = //*[@id="rhs_block"]/div[1]/div[1]/div/div[1]/div[2]/div[2]/div/div[1]/div/div/div/span[1]
                    destinationController.butterflyFoodplants = [ButterflyFoodplant(name: "黃星斑鳳蝶", type: butterflyFoodplantsType[indexPath.row], image: "黃星斑鳳蝶", description: "黃星斑鳳蝶，又名小黑斑鳳蝶、黃星鳳蝶、小褐斑鳳蝶、星斑鳳蝶，為鳳蝶科斑鳳蝶屬下的一個種。本種或置於鳳蝶屬之下。"),ButterflyFoodplant(name: "寬青帶鳳蝶", type: butterflyFoodplantsType[indexPath.row], image: "寬青帶鳳蝶", description: "寬帶青鳳蝶也稱寬青帶鳳蝶、台灣青條鳳蝶、鳳尾青鳳蝶、長尾青鳳蝶，是青鳳蝶屬中的一種蝴蝶。"),ButterflyFoodplant(name: "青帶鳳蝶", type: butterflyFoodplantsType[indexPath.row], image: "青帶鳳蝶", description: "青鳳蝶，鳳蝶亞科青鳳蝶屬下 的一種蝴蝶。，又稱青帶鳳蝶、樟青鳳蝶、藍帶青鳳蝶，英文名為常見水瓶藍蝶，在澳洲則稱為藍三角蝶 。為一種青鳳蝶屬之鳳蝶，廣布南亞、東南亞、日本、與澳洲地區。不同的分布大約有15個亞種，此種亦為青鳳蝶屬的模式物種。"),ButterflyFoodplant(name: "青斑鳳蝶", type: butterflyFoodplantsType[indexPath.row], image: "青斑鳳蝶", description: "木蘭青鳳蝶也稱青斑鳳蝶、多斑青鳳蝶、帝鳳蝶、瑤鳳蝶，是青鳳蝶屬中的一種蝴蝶。"),ButterflyFoodplant(name: "綠斑鳳蝶", type: butterflyFoodplantsType[indexPath.row], image: "綠斑鳳蝶", description: "翠斑青鳳蝶，鳳蝶亞科青鳳蝶族下的一種蝴蝶。多出現於林區，飛行快速，雌蝶在食草產卵時會較易觀察。")]
                case "蛺蝶科":
                    destinationController.butterflyFoodplants = [ButterflyFoodplant(name: "切翅單環蝶", type: butterflyFoodplantsType[indexPath.row], image: "切翅單環蝶", description: "切翅眉眼蝶，又名草目蝶、切翅眉眼蝶、切翅單環蝶、剪翅單眼蛇目蝶、剪翅單環蝶、截翅眉眼蝶，為蛺蝶科眉眼蝶屬下的一個種。"),ButterflyFoodplant(name: "小蛇目蝶", type: butterflyFoodplantsType[indexPath.row], image: "小蛇目蝶", description: "眉眼蝶，又名擬稻眉眼蝶、小蛇目蝶、紫帶眉眼蝶，為蛺蝶科眉眼蝶屬下的模式種。"),ButterflyFoodplant(name: "單帶蛺蝶", type: butterflyFoodplantsType[indexPath.row], image: "單帶蛺蝶", description: "異紋帶蛺蝶也稱小單帶蛺蝶、玉花蝶、小一文字蝶。本種雌雄異型，容易區別，雌蝶翅紋呈典型線蛺蝶型，翅面構成數條白色帶紋，雄蝶則翅背面，中央斑帶有一鮮明白帶。雄蝶與雙色帶蛺蝶雄蝶相似。"),ButterflyFoodplant(name: "台灣三線蝶", type: butterflyFoodplantsType[indexPath.row], image: "台灣三線蝶", description: "蓬萊環蛺蝶，又名臺灣環蛺蝶、埔里三線蝶、埔裏社三線蝶、臺灣三線蛺蝶，為蛺蝶科環蛺蝶屬下的一個種，為台灣特有種。"),ButterflyFoodplant(name: "琉璃蛺蝶", type: butterflyFoodplantsType[indexPath.row], image: "琉璃蛺蝶", description: "琉璃蛺蝶是琉璃蛺蝶屬中的一種蝴蝶。本種為此屬下唯一一種物種，或可歸於蛺蝶屬。")]
                case "灰蝶科":
                    destinationController.butterflyFoodplants = [ButterflyFoodplant(name: "埔里琉璃小灰蝶", type: butterflyFoodplantsType[indexPath.row], image: "埔里琉璃小灰蝶", description: "嫵琉灰蝶，又名達邦琉璃小灰蝶;珍貴嫵灰蝶、達邦瑠璃小灰蝶、錐粟琉璃灰蝶、埔里琉璃小灰蝶，為灰蝶科嫵琉灰蝶下的一個種。"),ButterflyFoodplant(name: "姬黑星小灰蝶", type: butterflyFoodplantsType[indexPath.row], image: "姬黑星小灰蝶", description: "黑點灰蝶，又名一點灰蝶、姬黑星小灰蝶、白灰蝶、白斑黑星灰蝶、小斑裏白灰蝶，是一種生活在南亞和東南亞灰蝶科小蝴蝶。"),ButterflyFoodplant(name: "沖繩小灰蝶", type: butterflyFoodplantsType[indexPath.row], image: "沖繩小灰蝶", description: "藍灰蝶，台灣又名沖繩小灰蝶，屬灰蝶科藍灰蝶亞科中的蝴一種蝴蝶，是藍灰蝶屬的單型種。是平地最常見的小型蝴蝶。成蟲常於草地、樹林邊以及路旁低飛，也常出現在各種草本植物旁。成蟲以及各蟲期整年都可見到。本種與莧藍灰蝶翅脈、交尾器構造類似，應至於同一屬 。"),ButterflyFoodplant(name: "白波紋小灰蝶", type: butterflyFoodplantsType[indexPath.row], image: "白波紋小灰蝶", description: "淡青雅波灰蝶別名又稱：白波紋小灰蝶，雄蝶與雌蝶的斑紋有些差異，身體背側灰褐色些微的淺藍色，腹側有白色的毛，前翅翅形接近直角三角形，且後翅類似扇形形狀，後翅的尾端有尾突，高溫期與低溫斑紋與顏色有所差異，高溫的個體腹面斑紋較鮮明，而低溫則是翅背藍色與白色斑紋面積較廣。"),ButterflyFoodplant(name: "琉璃波紋小灰蝶", type: butterflyFoodplantsType[indexPath.row], image: "琉璃波紋小灰蝶", description: "雅波灰蝶也可以稱為琉璃波紋小灰蝶、雅波灰蝶，\"琉璃\"與\"波紋\"，分別描述了本種翅膀背面與腹面的特徵呢。在命名上跟同種有些許重複的問題。")]
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

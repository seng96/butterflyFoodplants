//
//  butterflyFoodplantDetailTextCell.swift
//  butterflyFoodplants
//
//  Created by Seng Lam on 2018/5/31.
//  Copyright © 2018年 Seng Lam. All rights reserved.
//

import UIKit

class butterflyFoodplantDetailTextCell: UITableViewCell {
    
    @IBOutlet var descriptionLabel: UILabel!{
        didSet{
            descriptionLabel.numberOfLines = 0
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

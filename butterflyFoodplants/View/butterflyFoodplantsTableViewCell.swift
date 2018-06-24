//
//  butterflyFoodplantsTableViewCell.swift
//  butterflyFoodplants
//
//  Created by Seng Lam on 2018/5/1.
//  Copyright © 2018年 Seng Lam. All rights reserved.
//

import UIKit

class butterflyFoodplantsTableViewCell: UITableViewCell {

    @IBOutlet var typeName: UILabel!
    @IBOutlet var typeThumbnailImageView: UIImageView! {
        didSet{
            typeThumbnailImageView.layer.cornerRadius = typeThumbnailImageView.bounds.width / 2
            typeThumbnailImageView.clipsToBounds = true
        }
    }
    
    @IBOutlet var plantsName: UILabel!
    @IBOutlet var plantsThumbnailImageView: UIImageView!{
        didSet{
            plantsThumbnailImageView.layer.cornerRadius = plantsThumbnailImageView.bounds.width / 2
            plantsThumbnailImageView.clipsToBounds = true
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

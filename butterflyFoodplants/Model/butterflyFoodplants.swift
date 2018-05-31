//
//  butterflyFoodplants.swift
//  butterflyFoodplants
//
//  Created by Seng Lam on 2018/5/31.
//  Copyright © 2018年 Seng Lam. All rights reserved.
//

import Foundation
class ButterflyFoodplant{
    var name: String
    var type: String
    var image: String
    var description: String
    
    init(name: String, type: String, image: String, description: String){
        self.name = name
        self.type = type
        self.image = image
        self.description = description
    }
    
    convenience init(){
        self.init(name: "", type: "", image: "", description: "")
    }
}

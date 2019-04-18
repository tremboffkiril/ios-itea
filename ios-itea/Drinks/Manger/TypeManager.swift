//
//  ModelManger.swift
//  ios-itea
//
//  Created by Kiril Trembovetskiy on 4/18/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import Foundation
import UIKit

class TypeManager {
    
    // MASTER CHANGES
    var imageArray: [String] = ["image1", "image2", "image3", "image4"]
    var nameArray: [String] = ["Apple", "Google", "Yandex", "Yahoo"]
    
    var imageCytrusArray: [String] = ["image_1", "image_2", "image_3", "image_4"]
    var nameCytrusArray: [String] = ["Apple_Cytrus", "Google_Cytrus", "Yandex_Cytrus", "Yahoo_Cytrus"]
    
    func setData() -> [TypeModel] {
        var typeArray: [TypeModel] = []
        
        for (index, neImage) in imageArray.enumerated() {
            let type = TypeModel()
            type.imageName = neImage
            type.typeName = nameArray[index]
            
            typeArray.append(type)
        }
        print(typeArray.count)
        return typeArray
    }
    
    func setCytrusData() -> [TypeModel] {
        var typeArray: [TypeModel] = []
        
        for (index, neImage) in imageCytrusArray.enumerated() {
            let type = TypeModel()
            type.imageName = neImage
            type.typeName = nameCytrusArray[index]
            
            typeArray.append(type)
        }
        print(typeArray.count)
        return typeArray
    }
}

//
//  ModelManger.swift
//  ios-itea
//
//  Created by Kiril Trembovetskiy on 4/18/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import Foundation
import UIKit

class CompanyManager {
    
    var locationArray: [String] = ["Kyiv", "Lutsk", "Ternopil", "Lviv"]
    var imageArray: [String] = ["image1", "image2", "image3", "image4"]
    var nameArray: [String] = ["Apple", "Cytrus", "Yandex", "Yahoo"]
    var phoneArray: [String] = ["+380423423", "380123456", "380654321", "3809876543"]
    
    func setData() -> [CompanyModel] {
        var companyArray: [CompanyModel] = []
        
        for index in 1...4 {
            let company = CompanyModel()
            company.imageName = imageArray[index - 1]
            company.location = locationArray[index - 1]
            company.name = nameArray[index - 1]
            company.phoneNumber = phoneArray[index - 1]
            if company.name == "Cytrus" {
                company.types = TypeManager().setCytrusData()
            }
            companyArray.append(company)
        }
        print(companyArray.count)
        return companyArray
    }
}

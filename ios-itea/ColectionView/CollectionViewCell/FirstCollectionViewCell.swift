//
//  FirstCollectionViewCell.swift
//  ios-itea
//
//  Created by Kiril Trembovetskiy on 4/4/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    func update(image: String) {
        self.imageView.image = UIImage(named: image)
    }
}

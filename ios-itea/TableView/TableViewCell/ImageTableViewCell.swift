//
//  ImageTableViewCell.swift
//  ios-itea
//
//  Created by Kiril Trembovetskiy on 4/11/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var restaurantImageView: UIImageView!
    
    var sectionIndex: Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup() {
        restaurantImageView.clipsToBounds = true
        restaurantImageView.layer.cornerRadius = 5
    }
    
    func update(image: String) {
        restaurantImageView.image = UIImage(named: image)
    }
}

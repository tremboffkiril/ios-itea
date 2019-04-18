//
//  SecondTableViewCell.swift
//  ios-itea
//
//  Created by Kiril Trembovetskiy on 4/11/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    var delegate: FirstTableViewCellProtocol?
    var sectionIndex: Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func didTapSecondNextButton(_ sender: Any) {
        if let section = sectionIndex {
            delegate?.didTapNextButton(index: self.tag, section: section)
        }
    }
}

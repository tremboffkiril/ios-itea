//
//  FirstTableViewCell.swift
//  ios-itea
//
//  Created by Kiril Trembovetskiy on 4/2/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

protocol FirstTableViewCellProtocol {
    func didTapNextButton(index: Int, section: Int)
}

class FirstTableViewCell: UITableViewCell {
  
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    
    var delegate: FirstTableViewCellProtocol?
    var sectionIndex: Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
      
    }
    
    func update(student: Student) {
        nameLabel.text = student.name
        surnameLabel.text = student.surname ?? "No Name"
        if let avatarName = student.avatarImage {
            avatarImageView.image = UIImage(named: avatarName)
        } else {
            avatarImageView.backgroundColor = UIColor(red: 212, green: 2, blue: 105, alpha: 1)
        }
    }

    func updateFaculty(faculty: Faculty) {
        nameLabel.text = faculty.name
        surnameLabel.text = "University !"
        if let avatarName = faculty.avatarImage {
            avatarImageView.image = UIImage(named: avatarName)
        } else {
            avatarImageView.backgroundColor = UIColor(red: 212, green: 2, blue: 105, alpha: 1)
        }
    }
    
    @IBAction func didTapNextButton(_ sender: Any) {
        if let section = sectionIndex {
            delegate?.didTapNextButton(index: self.tag, section: section)
        }
    }
}

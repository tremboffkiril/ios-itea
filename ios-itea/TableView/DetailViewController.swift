//
//  DetailViewController.swift
//  ios-itea
//
//  Created by Kiril Trembovetskiy on 4/4/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var student: Student?
    var faculty: Faculty?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if faculty == nil {
            self.surnameLabel.text = student?.surname ?? "No Surname"
            self.nameLabel.text = student?.name
            
            if let avatarName = student?.avatarImage {
                imageView.image = UIImage(named: avatarName)
            } else {
                imageView.backgroundColor = UIColor(red: 212, green: 2, blue: 105, alpha: 1)
            }
        } else {
            self.nameLabel.text = faculty?.name
            
            if let avatarName = faculty?.avatarImage {
                imageView.image = UIImage(named: avatarName)
            } else {
                imageView.backgroundColor = UIColor(red: 212, green: 2, blue: 105, alpha: 1)
            }
        }
    }
}

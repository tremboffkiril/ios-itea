//
//  ViewController2.swift
//  ios-itea
//
//  Created by Kiril Trembovetskiy on 3/14/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    //Mark Alex add to Git
    var testDigits2 = 0
    
    @IBOutlet weak var secondScreenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondScreenLabel.text = "Our digit is \(testDigits2)"
    }

}

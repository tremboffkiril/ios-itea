//
//  ScreenViewController2.swift
//  ios-itea
//
//  Created by Kiril Trembovetskiy on 3/28/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class ScreenViewController2: UIViewController {

    @IBOutlet weak var secondScreenLabel: UILabel!
    
    var testDigit2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.secondScreenLabel.text = "Second Digit = \(testDigit2)"
    }
    
    @IBAction func didTapPopButton(_ sender: Any) { 
        self.navigationController?.popViewController(animated: true)
    }
}

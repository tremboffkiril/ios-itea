//
//  ScreenViewController1.swift
//  ios-itea
//
//  Created by Kiril Trembovetskiy on 3/28/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class ScreenViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     }

    @IBAction func didTapNextButton(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "ScreenViewController2") as! ScreenViewController2
        vc.testDigit2 = 55
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

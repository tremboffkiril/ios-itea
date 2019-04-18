//
//  ViewController.swift
//  ios-itea
//
//  Created by Kiril Trembovetskiy on 3/11/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class Student {
    var name: String
    var surname: String?
    var avatarImage: String?
    
    init(name: String) {
        self.name = name
    }
}

class Faculty {
    var name: String
    var avatarImage: String?
    
    init(name: String) {
        self.name = name
    }
}

class ViewController: UIViewController {
    
    var testDigit = 55
    
   
    //До загрузки
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Во время загрузки UI
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    //После загрузки экрана
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "testDigitsId" {
            let vc: ViewController2 = segue.destination as! ViewController2
            vc.testDigits2 = self.testDigit
        }
    }
}



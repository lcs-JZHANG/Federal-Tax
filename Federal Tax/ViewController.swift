//
//  ViewController.swift
//  Federal Tax
//
//  Created by Jesse Zhang on 2019-11-01.
//  Copyright © 2019 Jesse Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Mark: Label Name
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var income: UITextField!
    @IBOutlet weak var taxOwing: UILabel!
    @IBOutlet weak var taxRate: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func caculate(_ sender: Any) {
    }
    
}


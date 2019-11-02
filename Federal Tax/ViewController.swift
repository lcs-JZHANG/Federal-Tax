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
    func calculate(){
        // name and income
        guard let yourName = name.text else {
            print; "Please enter your name"
            return
        }
        guard let yourIncome = income.text else {
            print; "Please enter your income"
            return
            }
            switch income{
            case 0...47630:
                let owing = round(1.15 * income)
                let rateOfTax = round(owing, income * 100)
                taxOwing.text = "\(name), the federal tax owing is \(owing)"
                taxRate.text = "the tax rate is \(rateOfTax)%"
            case 47631...95259:
                let owing = round(1.15 * 47630 + 1.205 * (income - 47630))
                let rateOfTax = round(owing, income * 100)
                taxOwing.text = "\(name), the federal tax owing is \(owing)"
                taxRate.text = "the tax rate is \(rateOfTax)%"
            case 95260...147667:
                let owing = round(1.15 * 47630 + 1.205 * 47629 + 1.26 * (income - 95259))
                let rateOfTax = round(owing, income * 100)
                taxOwing.text = "\(name), the federal tax owing is \(owing)"
                taxRate.text = "the tax rate is \(rateOfTax)%"
            case 147668...210371:
                let owing = round(1.15 * 47630 + 1.205 * 47629 + 1.26 * 52408 + (income - 147667))
                let rateOfTax = round(owing, income * 100)
                taxOwing.text = "\(name), the federal tax owing is \(owing)"
                taxRate.text = "the tax rate is \(rateOfTax)%"
            default:
                let owing = round(1.15 * 47630 + 1.205 * 47629 + 1.26 * 52408 + 1.29 * 62704 + 1.33*(income - 210371))
                let rateOfTax = round(owing, income * 100)
                taxOwing.text = "\(name), the federal tax owing is \(owing)"
                taxRate.text = "the tax rate is \(rateOfTax)%"
            }
    }
}

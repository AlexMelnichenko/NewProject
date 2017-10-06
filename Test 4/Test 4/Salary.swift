//
//  Salary.swift
//  Test 4
//
//  Created by Alex Skigenok on 05.07.17.
//  Copyright © 2017 AlexAlexAlex. All rights reserved.
//

import Foundation
import UIKit

class SalaryController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var sum: UITextField!
    
    let myDefaults = NSUserDefaults.standardUserDefaults()
    
    @IBAction func addButton(sender: UIButton) {
        
        let one = textField1.text
        let two = textField2.text
        
        let oneInt = Int(one!)
        let twoInt = Int(two!)
        
        var sumString = Int()
        
        if twoInt == nil {
            sumString = oneInt!
        }else{
            sumString = oneInt! + twoInt!
        }
        
        sum.text = String(sumString)
        myDefaults.setInteger(sumString, forKey: "Key")
        
        
        performSegueWithIdentifier("unwindToController", sender: sumString)
    }
    
    override func viewDidLoad() {
        
        if textField1 != nil{
            let date = myDefaults.integerForKey("Key")
            sum.text = String(date)
            textField1.text = sum.text
        }
        
    }
    
}

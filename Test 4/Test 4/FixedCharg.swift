//
//  FixedCharg.swift
//  Test 4
//
//  Created by Alex Skigenok on 11.07.17.
//  Copyright © 2017 AlexAlexAlex. All rights reserved.
//

import Foundation
import UIKit

class FixedCharg: UIViewController {
    
    @IBOutlet weak var textFildFixed1: UITextField!
    @IBOutlet weak var textFildFixed2: UITextField!
    @IBOutlet weak var textFildFixed3: UITextField!
    
    let myUserDefults = NSUserDefaults.standardUserDefaults()
    
    @IBAction func addFixedCharg(sender: UIButton) {
        
        let fild1 = textFildFixed1.text
        let fild2 = textFildFixed2.text
        
        let fild1Int = Int(fild1!)
        let fild2Int = Int(fild2!)
        
        var sum = Int()
        
        if fild2Int == nil {
            sum = fild1Int!
        }else {
            sum = fild1Int! + fild2Int!
        }
        
        textFildFixed3.text = String(sum)
        myUserDefults.setInteger(sum, forKey: "KeyFixed")
        
        performSegueWithIdentifier("UnwindToFixed", sender: sum)
    }
    
    override func viewDidLoad() {
        if textFildFixed1 != nil{
            let date = myUserDefults.integerForKey("KeyFixed")
            textFildFixed3.text = String(date)
            textFildFixed1.text = textFildFixed3.text
            
        }
    }
}
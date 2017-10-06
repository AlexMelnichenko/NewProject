//
//  PigiBank.swift
//  Test 4
//
//  Created by Alex Skigenok on 11.07.17.
//  Copyright © 2017 AlexAlexAlex. All rights reserved.
//

import Foundation
import UIKit

class PigiBank: UIViewController {
    
    @IBOutlet weak var textFildPigi1: UITextField!
    @IBOutlet weak var textFildPigi2: UITextField!
    @IBOutlet weak var textFildPigi3: UITextField!
    
    let myDefaults = NSUserDefaults.standardUserDefaults()
    
    @IBAction func addPigiBank(sender: UIButton) {
        
        let fild1 = textFildPigi1.text
        let fild2 = textFildPigi2.text
        
        let fildInt1 = Int(fild1!)
        let fildInt2 = Int(fild2!)
        
        var sum = Int()
        
        if fildInt2 == nil {
            sum = fildInt1!
        }else {
            sum  = fildInt1! + fildInt2!
        }
        
        textFildPigi3.text = String(sum)
        myDefaults.setInteger(sum, forKey: "KeyPigi")
        
        performSegueWithIdentifier("UnwindPigiBank", sender: sum)
    }
    
    override func viewDidLoad() {
        if textFildPigi1 != nil{
            let date = myDefaults.integerForKey("KeyPigi")
            textFildPigi3.text = String(date)
            textFildPigi1.text = textFildPigi3.text
        }
    }
}



//
//  Expenses.swift
//  Test 4
//
//  Created by Alex Skigenok on 17.07.17.
//  Copyright © 2017 AlexAlexAlex. All rights reserved.
//

import Foundation
import UIKit

var myArray = [Int]()

class Expenses: UIViewController {
    @IBOutlet weak var addSum: UITextField!
    @IBOutlet weak var countArray: UITextField!
    
    //Save date
    let myUserDefoult = NSUserDefaults.standardUserDefaults()
    
    @IBAction func addButton(sender: UIButton) {
        
        let textFieldInt = Int(addSum.text!)
        var countArrayInt = Int(countArray.text!)
        
        myArray.append(textFieldInt!)
        
        
        func countMyArray () -> Int {
            var expensesCount = 0
            for number in myArray{
                expensesCount += number
            }
            return (expensesCount)
        }
        
        myUserDefoult.setInteger(countMyArray(), forKey: "KayForExpenses")
        
        countArray.text = String(countMyArray())
    }
    
    
    override func viewDidLoad() {
        
        let date = myUserDefoult.integerForKey("KayForExpenses")
        countArray.text = String(date)
    }
}
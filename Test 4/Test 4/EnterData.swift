//
//  EnterData.swift
//  Test 4
//
//  Created by Alex Skigenok on 15.09.17.
//  Copyright © 2017 AlexAlexAlex. All rights reserved.
//

import Foundation
import UIKit

    var arrayMoney:[Int] = []
    var arrayDate:[String] = []
    var arrayForeWhat:[String] = []

let myUserDefoults = NSUserDefaults.standardUserDefaults()


class EnterData: UIViewController {
    

    
    
    @IBOutlet weak var spendTextFild: UITextField!
    @IBOutlet weak var dataTextFild: UITextField!
    @IBOutlet weak var foreWhatTextfild: UITextField!
    

    func eaqvelArray() -> Int {

        arrayMoney.append(Int(spendTextFild.text!)!)
        arrayDate.append(dataTextFild.text!)
        arrayForeWhat.append(foreWhatTextfild.text!)

        let sumArray = arrayMoney.reduce(0) {$0 + $1}
        
        print(sumArray)
        
        return sumArray
    }
    
    
    
    
    func saveData() {
        myUserDefoults.setObject(arrayMoney, forKey: "arrayMoney")
        myUserDefoults.setObject(arrayDate, forKey: "arrayDate")
        myUserDefoults.setObject(arrayForeWhat, forKey: "arrayForeWhat")
        myUserDefoults.synchronize()
    }
    
    

  
    
    @IBAction func addButton(sender: UIButton) {


//        print(arrayMoney)
//        print(arrayDate)
//        print(arrayForeWhat)
//        print("my array save money \(myUserDefoults.objectForKey("arrayMoney") as! [Int])")
//        print("my array save data \(myUserDefoults.objectForKey("arrayDate") as! [String])")
//        print("my array save for what \(myUserDefoults.objectForKey("arrayForeWhat") as! [String])")

    }
}













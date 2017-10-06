//
//  ViewController.swift
//  Test 4
//
//  Created by Alex Skigenok on 05.07.17.
//  Copyright © 2017 AlexAlexAlex. All rights reserved.
//

import UIKit

//calendar
let date = NSDate()
let calendar = NSCalendar.currentCalendar()
let components = calendar.components([.Day, .Month, .Weekday, .WeekOfMonth,], fromDate: date)



class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var sumLabel: UITextField!
    @IBOutlet weak var pigiBank: UITextField!
    @IBOutlet weak var fixedCharg: UITextField!
    @IBOutlet weak var expensesTextField: UITextField!
    @IBOutlet weak var balanceTextField: UITextField!
    @IBOutlet weak var spendInDay: UITextField!
    
    @IBOutlet weak var test: UIButton!
    
    
    
    // balans from oll sum
    func balance() -> String {
        let sumLabelInt = Int(sumLabel.text!)
        let pigiBankInt = Int(pigiBank.text!)
        let fixedChargInt = Int(fixedCharg.text!)
        let expensesInt = Int(expensesTextField.text!)
        
        let balance = sumLabelInt! - pigiBankInt! - fixedChargInt! - expensesInt!
        let balanceString = String(balance)
        
        return balanceString
    }
    
    
    
    //spend in day
    func curentDayInMonth () -> String{
        var dayInMonth = components.month
        
        switch dayInMonth{
        case 1: 31
        case 2: dayInMonth = 28
        case 3: dayInMonth = 31
        case 4: dayInMonth = 30
        case 5: dayInMonth = 31
        case 6: dayInMonth = 30
        case 7: dayInMonth = 31
        case 8: dayInMonth = 31
        case 9: dayInMonth = 30
        case 10: dayInMonth = 31
        case 11: dayInMonth = 30
        case 12: dayInMonth = 31
        default: print("no month")
        }
        
        //let leftDayInMonth = dayInMonth - components.day
        
        let spendInDaySum = Int(balance())! / dayInMonth
        
        return String(spendInDaySum)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close (segue: UIStoryboardSegue){
        if let backTappt = segue.sourceViewController as? SalaryController{
            let data = backTappt.sum.text
            sumLabel.text = data
            balanceTextField.text = balance()
            spendInDay.text = curentDayInMonth()
            
        }else{
            if let backTapptPigi = segue.sourceViewController as? PigiBank{
                let dataPigi = backTapptPigi.textFildPigi3.text
                pigiBank.text = dataPigi
                balanceTextField.text = balance()
                spendInDay.text = curentDayInMonth()
                
            }else{
                if let backFixed = segue.sourceViewController as? FixedCharg{
                    let dataFixed = backFixed.textFildFixed3.text
                    fixedCharg.text = dataFixed
                    balanceTextField.text = balance()
                    spendInDay.text = curentDayInMonth()
                    
                    /*                            }else{
                     if let expensesField = segue.sourceViewController as? Expenses{
                     let dataExpenses = expensesField.countArray.text
                     expensesTextField.text = dataExpenses
                     balanceTextField.text = balance()
                     spendInDay.text = curentDayInMonth()
                     */
                }else{
                    if let newExpenses = segue.sourceViewController as? EnterData{
                        let sumDataArray = newExpenses.eaqvelArray()
                        expensesTextField.text = String(sumDataArray)
                        balanceTextField.text = balance()
                        spendInDay.text = curentDayInMonth()
                    }
                }
            }
        }
    }
}




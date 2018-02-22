//
//  ViewController.swift
//  Calculator - Stack View
//
//  Created by Jimmy Higuchi on 2/21/18.
//  Copyright © 2018 Jimmy Higuchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
   
    
    var textTotal: String = ""
    var totalFloat: Float = 0.0
    var totalStored: Float = 0.0
    var operand = "none"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = "0"
        
    }

    

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        switch sender.tag {
        case 1: textTotal += "1"
        case 2: textTotal += "2"
        case 3: textTotal += "3"
        case 4: textTotal += "4"
        case 5: textTotal += "5"
        case 6: textTotal += "6"
        case 7: textTotal += "7"
        case 8: textTotal += "8"
        case 9: textTotal += "9"
        case 0: textTotal += "0"
        // C
        case 10: textTotal = "0"
        // +/-
        case 11: textTotal = String(totalFloat * -1.0)
        // %
        case 12: textTotal = String(totalFloat / 100.0)
        // ÷
        case 13: totalStored = totalFloat
            textTotal = "0"
            operand = "divide"
        // X
        case 14: totalStored = totalFloat
            textTotal = "0"
            operand = "multiply"
        // -
        case 15: totalStored = totalFloat
            textTotal = "0"
            operand = "subtract"
        // +
        case 16: totalStored = totalFloat
            textTotal = "0"
            operand = "add"
        // =
        case 17:
            if operand != "" {
                switch operand {
                case "divide"   : textTotal = String(totalStored / totalFloat)
                case "multiply" : textTotal = String(totalStored * totalFloat)
                case "subtract" : textTotal = String(totalStored - totalFloat)
                case "add"      : textTotal = String(totalStored + totalFloat)
                default: print("operand error")
                }
            
            }
            
            
        // .
        case 18:
            if textTotal.contains(".") {
                return
            } else {
            textTotal += "."
            }
            
        default: print("button error")
        }
        
        
        totalFloat = Float(textTotal)!
        
        totalLabel.text = String(textTotal)
        
        // get rid of leading 0
        if textTotal == "0" {
            textTotal = ""
        }
        
       
        
        
    }
    
}


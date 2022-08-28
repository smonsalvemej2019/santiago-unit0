//
//  ViewController.swift
//  Prework
//
//  Created by Santiago Monsalve  on 8/28/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        //get the text imput, if empty then bill is 0
        let bill = Double(billAmountTextField.text!) ?? 0
        //set an array with double values (tip percentages)
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip  
        tipAmmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
            
    }
    
}


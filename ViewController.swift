//
//  ViewController.swift
//  Prework
//
//  Created by Vi Nguyen on 1/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Gett Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update total amount
        totalAmountLabel.text = String(format: "$%.2f", total)
        
        
    }
    
}


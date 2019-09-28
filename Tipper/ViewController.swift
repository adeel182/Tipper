//
//  ViewController.swift
//  Tipper
//
//  Created by Adeel on 9/26/19.
//  Copyright © 2019 Adeel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    @IBOutlet weak var BilLField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    
    @IBOutlet weak var percentageLabelf: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onTap(_ sender: Any) {
       
        view.endEditing(true)
    }
    @IBAction func TipCalc(_ sender: Any) {
        
        let bill = Double(BilLField.text!) ?? 0
        
//        get the bill amount
        let percentages = [0.1, 0.15, 0.2]
        let tip = bill * percentages[percentageLabelf.selectedSegmentIndex]
        let total = bill + tip
        
        TipLabel.text = String(format: "$%.2f",tip)
        TotalLabel.text = String(format: "$%.2f",total)
//         calc tip total
//update tip and total labels
    }
}


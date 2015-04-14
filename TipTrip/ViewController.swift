//
//  ViewController.swift
//  TipTrip
//
//  Created by Chirag Davé on 4/5/15.
//  Copyright (c) 2015 Chirag Davé. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
    
    let tipPercentages = [0.18, 0.2, 0.25]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        

        tipLabel.text = formatter.stringFromNumber(0)
        totalLabel.text = formatter.stringFromNumber(0)

        tipControl.selectedSegmentIndex = TTUtils.getDefaultTip()
        
        billField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        let billAmount = (billField.text as NSString).doubleValue
        
        if containerView.alpha <= 0 {
            UIView.animateWithDuration(0.7, animations: { () -> Void in
                self.containerView.alpha = 1.0
            })
        }
        
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let tip = billAmount * tipPercentage
        let total : NSNumber = billAmount + tip
        
        var formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        
        tipLabel.text = formatter.stringFromNumber(tip)
        totalLabel.text = formatter.stringFromNumber(total)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }    
}


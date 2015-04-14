//
//  SettingsViewController.swift
//  TipTrip
//
//  Created by Chirag Dave on 4/13/15.
//  Copyright (c) 2015 Chirag Davé. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTipSelector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaultTip = TTUtils.getDefaultTip()
        defaultTipSelector.selectedSegmentIndex = defaultTip
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onDonePressed(sender: AnyObject) {
        TTUtils.setDefaultTip(defaultTipSelector.selectedSegmentIndex)
        self.dismissViewControllerAnimated(true, completion: { })
    }
}
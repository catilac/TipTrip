//
//  TTUtils.swift
//  TipTrip
//
//  Created by Chirag Dave on 4/13/15.
//  Copyright (c) 2015 Chirag Davé. All rights reserved.
//

import Foundation

let kDefaultTipKey = "NSUserDefaultsTip"

class TTUtils {
    
    class func getDefaultTip() -> Int {
        let defaults = NSUserDefaults.standardUserDefaults()
        return defaults.integerForKey(kDefaultTipKey)
    }
    
    class func setDefaultTip(tip: Int) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(tip, forKey: kDefaultTipKey)
    }
    
}
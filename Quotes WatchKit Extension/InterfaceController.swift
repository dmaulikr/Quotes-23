//
//  InterfaceController.swift
//  Quotes WatchKit Extension
//
//  Created by Phil on 5/28/15.
//  Copyright (c) 2015 doodDevelopments. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    var funnyQuotes = ["funny 1 fdalskdjflkajl kjsfd", "funny 2 falsdjf;kajsdlfkjaslkfjls", "funny 3 flakjsdlfkjas;ldfkjalskdfj"]
    
    var motivationalQuotes = ["moto 1 oadjlkfajl skjf lakj afjalskj", "moto 2 aflsidjflaksj dflakjldskfj", "moto 3 falsdkjflkajsldf"]
    
    var boringQuotes = ["boring 1 lkjfaslkdjflaksjfl", "boring 2 alskdjfalk sjflkasjdlfa", "boring 3 jfal;kdsjflkajsdlfkajsldfkj"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        setTheTable(self.funnyQuotes)
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func setTheTable(quoteArray : [String]) {
        self.table.setNumberOfRows(quoteArray.count, withRowType: "QuoteRow")
        
        var count = 0
        for quote in quoteArray {
            var row = self.table.rowControllerAtIndex(count) as! QuoteRow
            row.quoteLabel.setText("\"\(quote)\"")
            count++
        }
    }
    
    // MARK: IBActions

    @IBAction func funnyTapped() {
        setTheTable(self.funnyQuotes)
    }
    
    @IBAction func motivationTapped() {
        setTheTable(self.motivationalQuotes)
    }
    
    @IBAction func boringTapped() {
        setTheTable(self.boringQuotes)
    }
}
